import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:website/screens/templates/intro_experience/in_store.dart';

class Animated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Intro animation"),
        backgroundColor: Colors.green[900],
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green[900],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // width: 250.0,
                  child: DefaultTextStyle(
                    style: TextStyle(fontSize: 50.0, fontFamily: 'Agne'),
                    child: Center(
                      child: AnimatedTextKit(
                        displayFullTextOnTap: true,
                        repeatForever: false,
                        // totalRepeatCount: 0,
                        animatedTexts: [
                          TypewriterAnimatedText('Welcome to my store',
                              cursor: "|", speed: Duration(milliseconds: 200)),
                        ],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnimatedServiceStart(),
                        ));
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
