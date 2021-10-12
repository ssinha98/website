import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/screens/templates/storefront1/category.dart';

class StoreFront1Start extends StatelessWidget {
  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("storefront"),
        backgroundColor: Colors.white70,
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () {
              _launchURL('https://www.instagram.com/new_western.co/');
            },
            child: Container(
              height: 30,
              width: 30,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Instagram_icon.png/1024px-Instagram_icon.png'),
            ),
          ),
          InkWell(
            onTap: () {
              _launchURL('https://wa.me/+19095417822');
            },
            child: Container(
              height: 30,
              width: 30,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/WhatsApp.svg/1021px-WhatsApp.svg.png'),
            ),
          ),
          InkWell(
            onTap: () {
              _launchURL('https://www.linkedin.com/in/payal-sinha-18782a48/');
            },
            child: Container(
              height: 30,
              width: 30,
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2800&q=80'),
                  fit: BoxFit.fill),
            ),
          ),
          // Category links
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Category(category: "Women"),
                      ),
                    );
                  },
                  child: Text(
                    "Women",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Category(category: "Men"),
                      ),
                    );
                  },
                  child: Text(
                    "Men",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Category(category: "Children"),
                      ),
                    );
                  },
                  child: Text(
                    "Children",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
          // Bottom bar
          Column(
            children: [
              Expanded(
                flex: 8,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.home),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.notes_outlined),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(Icons.grid_view),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
