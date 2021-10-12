import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mixpanel_analytics/mixpanel_analytics.dart';
import 'package:website/components/ProductPage.dart';
import 'package:website/services/catalog_db.dart';

class TableOfContents extends StatefulWidget {
  final String username;
  TableOfContents({Key key, this.username});

  @override
  _TableOfContentsState createState() => _TableOfContentsState();
}

class _TableOfContentsState extends State<TableOfContents> {
  // final _user$ = StreamController<String>.broadcast();
  // MixpanelAnalytics _mixpanel;

  // Object _error;
  // String _success;

  // int _levelNumber = 0;

  @override
  void initState() {
    super.initState();
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Hi ${widget.username}, welcome to YourCo",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 75),
                  ),
                ),
                SizedBox(height: 50),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 350,
                    child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                            child: Text(
                              "Category One",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                        username: widget.username,
                                        colour: Colors.red.shade100,
                                        // nextPage: ProductPage(),
                                        categoryTitle: "Product Category One",
                                        productList: categoryOneList)),
                              );
                            }),
                        InkWell(
                            child: Text(
                              "Catgory Two",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                        username: widget.username,
                                        colour: Colors.blue[200],
                                        // nextPage: ProductPage(),
                                        categoryTitle: "Product Category Two",
                                        productList: categoryTwoList)),
                              );
                            }),
                        InkWell(
                          child: Text(
                            "Cateogry Three",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                      username: widget.username,
                                      colour: Colors.green[200],
                                      // nextPage: ProductPage(),
                                      categoryTitle: "Product Category Three",
                                      productList: categoryThreeList)),
                            );
                          },
                        ),
                        InkWell(
                            child: Text(
                              "Category Four",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                        username: widget.username,
                                        colour: Colors.lightBlueAccent[100],
                                        // nextPage: ProductPage(),
                                        categoryTitle: "Product Category 4",
                                        productList: categoryFourList)),
                              );
                            }),
                        InkWell(
                          child: Text(
                            "Category Five",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                      username: widget.username,
                                      colour: Colors.lightGreen,
                                      // nextPage: ProductPage(),
                                      categoryTitle: "Product Category 5",
                                      productList: categoryFiveList)),
                            );
                          },
                        ),
                        InkWell(
                          child: Text(
                            "Category Six",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                      username: widget.username,
                                      colour: Colors.pinkAccent[100],
                                      // nextPage: ProductPage(
                                      //     username: widget.username,
                                      //     colour: Colors.yellow[100],
                                      //     nextPage: Cart(),
                                      //     categoryTitle:
                                      //         "Product Category 7",
                                      //     productList: categorySevenList),
                                      categoryTitle: "Product Category 6",
                                      productList: categorySixList)),
                            );
                          },
                        ),
                        InkWell(
                          child: Text(
                            "Category Seven",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                      username: widget.username,
                                      colour: Colors.yellow[100],
                                      // nextPage: Cart(),
                                      categoryTitle: "Product Category 7",
                                      productList: categorySevenList)),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
