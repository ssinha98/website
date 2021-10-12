import 'package:flutter/material.dart';
import 'package:website/screens/poc/cart.dart';

class FloatingCartNav extends StatelessWidget {
  final String username;
  FloatingCartNav({Key key, this.username});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        Icons.shopping_cart,
        color: Colors.white,
      ),
      backgroundColor: Colors.blue,
      onPressed: () {
        // showCartModal(context);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Cart(
                    username: username,
                  )),
        );
      },
    );
  }
}
