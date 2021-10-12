import 'package:flutter/material.dart';
import 'package:website/components/ProductList.dart';
import 'package:website/screens/poc/cart.dart';
import 'package:website/services/catalog_db.dart';

class SubCategory extends StatelessWidget {
  const SubCategory({Key key, this.category, this.subcategory})
      : super(key: key);
  final String category;
  final String subcategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SafeArea(
                child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Text(
                        "${this.category}'s ${this.subcategory}",
                        style: TextStyle(
                            fontSize: 45,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Center(
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_back_ios),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    )),
                                Expanded(
                                  flex: 2,
                                  child: Container(),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.search),
                                          onPressed: () {},
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.card_travel),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => Cart(
                                                          username: "username",
                                                        )),
                                              );
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 8,
                              child: Container(
                                // color: Colors.black,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 6,
                                      child: ProductList(
                                        list: categoryOneList,
                                      ),
                                      // child: ListView(
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: SizedBox(),
                                    ),
                                    Expanded(
                                        flex: 6,
                                        child: ProductList(
                                          list: categorySixList,
                                        )),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: SizedBox(),
                )
              ],
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 13,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.all(
                          Radius.circular(40.0),
                        )),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.filter_list,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Category",
                              style: TextStyle(color: Colors.white),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Colour",
                              style: TextStyle(color: Colors.white),
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              "Size",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(),
              )
            ],
          ),
        )
      ],
    ));
  }
}
