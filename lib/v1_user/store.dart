import 'package:flutter/material.dart';
import 'package:website/v1_user/nav.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Enter a specific storefront"),
        elevation: 0.0,
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          // background colour
          Container(
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Nav()),
                );
              },
              child: Text(
                "Enter a store you want to check out",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            )),
          )
        ],
      ),
    );
  }
}
