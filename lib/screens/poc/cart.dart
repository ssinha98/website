import 'dart:async';

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:mixpanel_analytics/mixpanel_analytics.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/services/cart_db.dart';

class Cart extends StatefulWidget {
  final String username;
  Cart({Key key, this.username});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  final _user$ = StreamController<String>.broadcast();
  MixpanelAnalytics _mixpanel;

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

    _user$.add(widget.username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [MaterialButton(onPressed: () => print(widget.username))],
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "Your Cart",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 8,
                          child: ListTile(
                            title: Text(cart[index].sku),
                            leading: Container(
                                child: Image.asset(cart[index].imagePath)),
                          ),
                        );
                      }),
                ),
                MaterialButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "copy your cart to your clipboard",
                          style: TextStyle(
                              fontFamily: 'Indie', color: Colors.white),
                        ),
                        Icon(Icons.copy),
                      ],
                    ),
                    onPressed: () async {
                      _mixpanel.track(
                          event: 'cartCopied',
                          properties: {'company': 'YourCo'});

                      setState(() {
                        cartSKUS = cart.map((e) => e.sku).toList();
                        cartClipboard = cartSKUS.join(", ");
                      });
                      print(cartClipboard);
                      FlutterClipboard.copy(cartClipboard)
                          .then((value) => print('$cartClipboard, copied'));
                    }),
                MaterialButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Text(
                            "Now paste it right into your WhatsApp chat! Use the WhatsApp icon to open your chat",
                            style: TextStyle(
                                fontFamily: 'Indie', color: Colors.white)),
                      ),
                      Image.asset(
                        "assets/whatsapp.png",
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    ],
                  ),
                  onPressed: () async {
                    _launchURL("https://wa.me/+19095417822");
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
