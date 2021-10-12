import 'package:flutter/material.dart';
import 'package:website/screens/templates/storefront1/subcategory.dart';

class Category extends StatelessWidget {
  const Category({Key key, this.category}) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Center(
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.green,
                      child: Center(
                        child: Text(
                          category,
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
                                              onPressed: () {})
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
                                  child: Center(
                                      child: ListView(
                                    // This next line does the trick.
                                    scrollDirection: Axis.horizontal,
                                    children: <Widget>[
                                      SubCategoryCard(
                                        imageurl:
                                            'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2800&q=80',
                                        subcategory: "New Arrivals",
                                        category: category,
                                      ),
                                      SubCategoryCard(
                                        imageurl:
                                            'https://images.unsplash.com/photo-1507114845806-0347f6150324?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2734&q=80',
                                        subcategory: "Biggest Hits",
                                      ),
                                    ],
                                  )),
                                )),
                          ],
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: SizedBox(),
                  )
                ],
              ),
            ),
          ),
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

class SubCategoryCard extends StatelessWidget {
  final String imageurl;
  final String subcategory;
  final String category;

  SubCategoryCard({Key key, this.category, this.imageurl, this.subcategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubCategory(
              category: category,
              subcategory: subcategory,
            ),
          ),
        );
      },
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          Container(
            width: 250.0,
            color: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(imageurl),
                          // 'https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2800&q=80'),
                          fit: BoxFit.fill),
                      // color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          subcategory,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
