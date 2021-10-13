import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/screens/poc/start.dart';
import 'package:website/screens/templates/intro_experience/start.dart';
import 'package:website/screens/templates/service_based/start.dart';
import 'package:website/screens/templates/storefront1/start.dart';

class TemplatePicker extends StatelessWidget {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          MaterialButton(
            color: Colors.white,
            child: Text("About this project"),
            onPressed: () {
              _launchURL(
                  'https://docs.google.com/document/d/1zSIwicZIUwaOCFjydu3r0ZnIUVhw-K1nDKn6OZJPoZA/edit?usp=sharing');
            },
          )
        ],
      ),
      body: Stack(
        children: [
          // background colour
          Container(),
          Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                ListTile(
                  title: Text("Basic - proof of concept"),
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Start()),
                  ),
                ),
                ListTile(
                  title: Text("Style 1 - product based"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StoreFront1Start()),
                  ),
                ),
                ListTile(
                  title: Text("Style 2 - service based"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceStart()),
                  ),
                ),
                ListTile(
                  title: Text("Style 2 - service based (no feedback)"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServiceStart()),
                  ),
                ),
                ListTile(
                  title: Text("Style 3 - animated intro"),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Animated()),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
