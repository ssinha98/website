import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  // TextEditingController _nameController = TextEditingController(
  //     text: "Hey! This is [username], I'd like to contact you about [service]");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Profile"),
        backgroundColor: Colors.red,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          // background colour
          Container(
            color: Colors.red,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
