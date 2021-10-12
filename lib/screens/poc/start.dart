import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mixpanel_analytics/mixpanel_analytics.dart';
import 'package:website/screens/poc/table_of_contents.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  final _user$ = StreamController<String>.broadcast();
  MixpanelAnalytics _mixpanel;

  final usernameController = TextEditingController();
  String username;

  @override
  void initState() {
    super.initState();

    _mixpanel = MixpanelAnalytics(
      token: 'fb982732c21c6ab763b9e5a3c89ee695',
      userId$: _user$.stream,
      verbose: true,
      shouldAnonymize: true,
      shaFn: (value) => value,
    );

    _user$.add(usernameController.text);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to YourCo",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                TextField(
                  decoration: InputDecoration(hintText: "What's your name?"),
                  controller: usernameController,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      username = usernameController.text;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TableOfContents(
                                username: username,
                              )),
                    );
                    _mixpanel.track(
                        event: 'enteredBook',
                        properties: {'company': 'YourCo'});
                  },
                  child: Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios),
                        onPressed: () async {
                          setState(() {
                            username = usernameController.text;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TableOfContents(
                                      username: username,
                                    )),
                          );
                        },
                      ),
                      Text(
                        "Start shopping",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
