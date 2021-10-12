import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class ServiceStart extends StatelessWidget {
  TextEditingController _controller = TextEditingController(
      text: "Hey! This is [username], I'd like to contact you about [service]");

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  List<String> services;

  @override
  Widget build(BuildContext context) {
    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Center(child: Text('Reach out to Payal')),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Container(
                    // height: 100,
                    child: TextField(
                      maxLines: null,
                      controller: _controller,
                      onChanged: (value) => _controller,
                      decoration: InputDecoration(
                          // contentPadding: new EdgeInsets.symmetric(
                          //     vertical: 40.0, horizontal: 10.0),
                          ),
                    ),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('Contact Payal'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Clipboard.setData(ClipboardData(text: _controller.text));
                  print(
                      "open preferred contact channel - let's assume whatsapp");
                  _launchURL("https://wa.me/+19095417822");
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payal Sinha: The Learning Ladder",
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        backgroundColor: Colors.white,
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
              _launchURL('https://wa.me/91+19095417822');
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
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Image.network(
                                      'https://images.unsplash.com/photo-1544717305-2782549b5136?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Text(
                                              "Payal Sinha: The Learning Ladder",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ))),
                                      Expanded(
                                          flex: 1,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellow,
                                              ),
                                              Icon(Icons.star_border_outlined),
                                            ],
                                          )),
                                      Expanded(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                  child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.timer,
                                                    color: Colors.pinkAccent,
                                                  ),
                                                  Text(
                                                    "30 min",
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              )),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Center(
                                                  child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.attach_money,
                                                    color: Colors.green,
                                                  ),
                                                  Text(
                                                    "20",
                                                    style: TextStyle(
                                                        color: Colors.green,
                                                        fontSize: 15),
                                                  ),
                                                ],
                                              )),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                              flex: 1,
                              child: Text(
                                "About Payal",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              )),
                          Expanded(
                              flex: 3,
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15)))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Available services",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                            Expanded(
                              flex: 1,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    width: 250,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          title: Text("Learning pod"),
                                          subtitle: Text(
                                              "3-4 hours of special attention with myself, and/or a qualified partner"),
                                        ),
                                      )),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: InkWell(
                                      onTap: () {
                                        services.add("Teacher training,  ");
                                      },
                                      child: Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          title: Text("Teacher training"),
                                          subtitle: Text(
                                              "1-2 months of weekly sessions, training your schools teachers in early childhood best practices"),
                                        ),
                                      )),
                                    ),
                                  ),
                                  Container(
                                    width: 250,
                                    child: InkWell(
                                      onTap: () {
                                        services.add("Workshops, ");
                                      },
                                      child: Card(
                                          child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ListTile(
                                          title: Text("Workshops"),
                                          subtitle: Text(
                                              "Full day workshops, giving your teachers exposure to international best practices in early childhood teaching, lesson planning etc..."),
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        // color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Expanded(
                            //     flex: 1,
                            //     child: Text(
                            //       "Feedback",
                            //       style: TextStyle(
                            //           color: Colors.black54,
                            //           fontWeight: FontWeight.bold,
                            //           fontSize: 25),
                            //     )),
                            // Expanded(
                            //     flex: 1,
                            //     child: Row(
                            //       children: [
                            //         Text(
                            //           "4.5",
                            //           style: TextStyle(
                            //               color: Colors.pink,
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 15),
                            //         ),
                            //         SizedBox(
                            //           width: 10,
                            //         ),
                            //         Text(
                            //           "Average rating",
                            //           style: TextStyle(
                            //               color: Colors.grey,
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 15),
                            //         ),
                            //       ],
                            //     )),
                            //     Expanded(
                            //       flex: 4,
                            //       child: Stack(
                            //         children: [
                            //           Container(
                            //             // color: Colors.blue,
                            //             child: Row(
                            //               children: [
                            //                 Expanded(
                            //                   flex: 1,
                            //                   child: Container(
                            //                     child: Column(
                            //                       children: [
                            //                         Expanded(
                            //                           flex: 1,
                            //                           child: Container(
                            //                             child: Center(
                            //                                 child: Text("65%",
                            //                                     style: TextStyle(
                            //                                         fontWeight:
                            //                                             FontWeight
                            //                                                 .bold,
                            //                                         color: Colors
                            //                                             .white))),
                            //                             decoration: BoxDecoration(
                            //                                 color: Colors.pink,
                            //                                 borderRadius:
                            //                                     BorderRadius.all(
                            //                                         Radius.circular(
                            //                                             15))),
                            //                           ),
                            //                         ),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                           flex: 1,
                            //                           child: Row(
                            //                             children: [
                            //                               Expanded(
                            //                                 flex: 4,
                            //                                 child: Container(
                            //                                   child: Center(
                            //                                       child: Text("55%",
                            //                                           style: TextStyle(
                            //                                               fontWeight:
                            //                                                   FontWeight
                            //                                                       .bold,
                            //                                               color: Colors
                            //                                                   .white))),
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors.pink,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                               Expanded(
                            //                                 flex: 1,
                            //                                 child: Container(
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors
                            //                                           .transparent,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                             ],
                            //                           ),
                            //                         ),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                           flex: 1,
                            //                           child: Row(
                            //                             children: [
                            //                               Expanded(
                            //                                 flex: 3,
                            //                                 child: Container(
                            //                                   child: Center(
                            //                                       child: Text("45%",
                            //                                           style: TextStyle(
                            //                                               fontWeight:
                            //                                                   FontWeight
                            //                                                       .bold,
                            //                                               color: Colors
                            //                                                   .white))),
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors.pink,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                               Expanded(
                            //                                 flex: 1,
                            //                                 child: Container(
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors
                            //                                           .transparent,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                             ],
                            //                           ),
                            //                         ),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                           flex: 1,
                            //                           child: Row(
                            //                             children: [
                            //                               Expanded(
                            //                                 flex: 2,
                            //                                 child: Container(
                            //                                   child: Center(
                            //                                       child: Text("25%",
                            //                                           style: TextStyle(
                            //                                               fontWeight:
                            //                                                   FontWeight
                            //                                                       .bold,
                            //                                               color: Colors
                            //                                                   .white))),
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors.pink,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                               Expanded(
                            //                                 flex: 1,
                            //                                 child: Container(
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors
                            //                                           .transparent,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                             ],
                            //                           ),
                            //                         ),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                           flex: 1,
                            //                           child: Row(
                            //                             children: [
                            //                               Expanded(
                            //                                 flex: 1,
                            //                                 child: Container(
                            //                                   child: Center(
                            //                                       child: Text("15%",
                            //                                           style: TextStyle(
                            //                                               fontWeight:
                            //                                                   FontWeight
                            //                                                       .bold,
                            //                                               color: Colors
                            //                                                   .white))),
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors.pink,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                               Expanded(
                            //                                 flex: 1,
                            //                                 child: Container(
                            //                                   decoration: BoxDecoration(
                            //                                       color: Colors
                            //                                           .transparent,
                            //                                       borderRadius:
                            //                                           BorderRadius
                            //                                               .all(Radius
                            //                                                   .circular(
                            //                                                       15))),
                            //                                 ),
                            //                               ),
                            //                             ],
                            //                           ),
                            //                         ),
                            //                       ],
                            //                     ),
                            //                   ),
                            //                 ),
                            //                 Expanded(
                            //                   flex: 1,
                            //                   child: Container(
                            //                     child: Column(
                            //                       children: [
                            //                         Expanded(
                            //                             flex: 1,
                            //                             child: Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .center,
                            //                               children: [
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                               ],
                            //                             )),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                             flex: 1,
                            //                             child: Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .center,
                            //                               children: [
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                               ],
                            //                             )),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                             flex: 1,
                            //                             child: Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .center,
                            //                               children: [
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                               ],
                            //                             )),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                             flex: 1,
                            //                             child: Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .center,
                            //                               children: [
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                               ],
                            //                             )),
                            //                         SizedBox(
                            //                           height: 3,
                            //                         ),
                            //                         Expanded(
                            //                             flex: 1,
                            //                             child: Row(
                            //                               mainAxisAlignment:
                            //                                   MainAxisAlignment
                            //                                       .center,
                            //                               children: [
                            //                                 Icon(
                            //                                   Icons.star,
                            //                                   color: Colors.yellow,
                            //                                 ),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                                 Icon(Icons
                            //                                     .star_border_outlined),
                            //                               ],
                            //                             )),
                            //                       ],
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //     Expanded(
                            //       flex: 3,
                            //       child: SizedBox(),
                            //     )
                            //   ],
                            // ),
                          ]),
                      // Expanded(
                      //     flex: 1,
                      //     child: Container(
                      //       color: Colors.pink,
                      //     ))
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Expanded(
                  flex: 9,
                  child: Container(),
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.transparent,
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: InkWell(
                                onTap: () {
                                  print("contact dialog or modal");
                                  _showMyDialog();
                                  print(services);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.pinkAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Center(
                                        child: Text("Get in touch",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20))),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
