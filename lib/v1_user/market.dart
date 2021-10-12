import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Discover"),
        automaticallyImplyLeading: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
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
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "Your stores",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.white,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Card(
                                      child: Stack(children: [
                                        InkWell(
                                          onTap: () {
                                            print(
                                                "open store - storefront or social");
                                          },
                                          child: Container(
                                            width: 200,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Center(
                                            child: Placeholder(),
                                          ),
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "Stores in your area",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.white,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Card(
                                      child: Stack(children: [
                                        InkWell(
                                          onTap: () {
                                            print(
                                                "open store - storefront or social");
                                          },
                                          child: Container(
                                            width: 200,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          width: 200,
                                          child: Center(
                                            child: Placeholder(),
                                          ),
                                        ),
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "Businesses in your network",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.white,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Card(
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.black,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "yourFriend bought from here last week",
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                color: Colors.black,
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Text(
                                                "3 of your friends worked with them before",
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Text(
                                  "Businesses that care about what you do",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                color: Colors.white,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Card(
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                color: Colors.black,
                                              ),
                                            ),
                                            Expanded(
                                                flex: 1,
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            4.0),
                                                    child: Image.network(
                                                        'https://i.pinimg.com/originals/f0/95/e6/f095e634102feb5184176038287d3ad8.png'),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      child: Container(
                                        padding: EdgeInsets.all(3),
                                        width: 200,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                color: Colors.black,
                                              ),
                                            ),
                                            Expanded(
                                                flex: 1,
                                                child: Center(
                                                  child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color: Colors.red,
                                                      )),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
