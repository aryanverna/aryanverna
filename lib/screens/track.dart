import 'package:flutter/material.dart';

class TrackScreen extends StatelessWidget {
  const TrackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffDBE9FC),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          color: const Color(0xff37459D),
          iconSize: 35,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "Tracking Order",
          style: TextStyle(
            color: Color(0xff37459D),
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height * 0.4,
            width: width,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset(
                'assets/images/track.png',
              ),
            ),
          ),
          SizedBox(height: height * 0.04),
          Column(
            children: [
              // Text('Dispatch'),
              SizedBox(
                width: width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Dispatch',
                      style: TextStyle(
                        // color: Color(0xff37459D),
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '10 am ',
                      style: TextStyle(
                        // color: Color(0xff37459D),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              SizedBox(
                width: width * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Estimated Arrival',
                      style: TextStyle(
                        color: Color(0xffD0292E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '10: 25 am',
                      style: TextStyle(
                        color: Color(0xffD0292E),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                width: width * 0.7,
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(
                          color: Color(0xffDBE9FC), width: 3.0),
                    ),
                    backgroundColor: const Color(0xffDBE9FC),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lexend-Thin"),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Order Details",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                width: width * 0.55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/call.png',
                          height: 50,
                        ),
                        const Text('Call'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/message.png',
                          height: 60,
                        ),
                        const Text('Message'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.7,
                child: const Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Thank you, We wish you\n   health and happiness',
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
