import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:reso_music_player_animation/player_details.dart';

import 'floating_action_button.dart';

//Nishidh Patel 3-5-2023

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(seconds: 5))..repeat();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          DraggableFab(
            initPosition: Offset(50,50),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              onPressed: (){
                //action after pressing this button
              },

              heroTag: 0,
              child: Center(
                child: AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: _controller.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: InkWell(
                    onTap: (){

                      Navigator.of(context).push(
                          PageRouteBuilder(
                            fullscreenDialog: true,
                            transitionDuration: const Duration(milliseconds: 600),
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation) {
                              return const PlayerDetails();
                            },
                            reverseTransitionDuration: const Duration(milliseconds: 600),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secondaryAnimation,
                                Widget child) {
                              return FadeTransition(
                                opacity:
                                animation, // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                                child: child,
                              );
                            },
                          ),
                      );
                    },
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/img1.jpg'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }


}

