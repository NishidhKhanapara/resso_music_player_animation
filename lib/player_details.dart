import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Nishidh Patel 3-5-2023

class PlayerDetails extends StatefulWidget {
  const PlayerDetails({Key? key}) : super(key: key);

  @override
  _PlayerDetailsState createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,

        body: Container(
          margin: EdgeInsets.only(top: 65),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 300,
                      child: Hero(
                        tag: 0,
                        child: Image.asset(
                          "images/img1.jpg",
                          fit: BoxFit.fill,
                          height: 300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                   SizedBox(
                     width: double.infinity,
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children:  const [
                         Text(
                           "Blinding Lights",
                           style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),
                         ), Text(
                           "The Weeknd",
                           style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),
                         ),
                       ],
                     ),
                   )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Slider(
                        min: 0,
                        max: 100,
                        thumbColor: Colors.white,
                        activeColor: Colors.deepOrangeAccent,
                        value: 10,
                        onChanged: (value) {}),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "00:10",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "03:20",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.skip_previous,
                          size: 50,
                          color: Colors.deepOrangeAccent,
                        ),
                        Icon(
                          Icons.pause,
                          size: 50,
                          color: Colors.deepOrangeAccent,
                        ),
                        Icon(
                          Icons.skip_previous,
                          size: 50,
                          color: Colors.deepOrangeAccent,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
