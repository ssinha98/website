import 'package:flutter/material.dart';
import 'package:website/components/FloatingCartNav.dart';
import 'package:website/components/ProductList.dart';

class ProductPage extends StatefulWidget {
  final String username;
  final Color colour;
  final Widget nextPage;
  final String categoryTitle;
  final List productList;

  ProductPage(
      {Key key,
      this.username,
      this.colour,
      this.nextPage,
      this.categoryTitle,
      this.productList});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: widget.colour,
          actions: [
            MaterialButton(onPressed: () => print(widget.username)),
          ],
        ),
        body: Stack(
          children: [
            // background colour
            Container(color: widget.colour),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        widget.categoryTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    Expanded(
                        flex: 9,
                        child: Container(
                          color: Colors.white,
                          child: ProductList(
                            list: widget.productList,
                            username: widget.username,
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingCartNav());
  }
}
