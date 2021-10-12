import 'dart:async';

import 'package:flutter/material.dart';
import 'package:website/services/cart_db.dart';

class ProductList extends StatefulWidget {
  final List list;
  final String username;

  ProductList({Key key, this.username, this.list});

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 8,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(90))),
              height: 300,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              widget.list[index].title,
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    widget.list[index].skus
                        ? new DropdownButton<String>(
                            hint: widget.list[index].sku == null
                                ? Text("size")
                                : Text(widget.list[index].sku),
                            items: <String>['S', 'M', 'L', 'XL']
                                .map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList(),
                            onChanged: (newvalue) {
                              setState(() {
                                widget.list[index].sku =
                                    "${widget.list[index].title} - $newvalue ";
                              });
                            },
                          )
                        : Container(),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Image.asset(widget.list[index].imagePath),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () async {
                            print(widget.username);
                            setState(() {
                              widget.list[index].sku != null
                                  ? widget.list[index].sku =
                                      widget.list[index].sku
                                  : widget.list[index].sku =
                                      widget.list[index].title;
                              cart.add(widget.list[index]);
                            });
                            final snackBar = SnackBar(
                              duration: Duration(seconds: 2),
                              content: Text('${widget.list[index].sku} added!'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                            print("Send engage event");
                          },
                          child: Column(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () async {
                                    print(widget.username);
                                    setState(() {
                                      widget.list[index].sku != null
                                          ? widget.list[index].sku =
                                              widget.list[index].sku
                                          : widget.list[index].sku =
                                              widget.list[index].title;
                                      cart.add(widget.list[index]);
                                    });
                                    final snackBar = SnackBar(
                                      duration: Duration(seconds: 2),
                                      content: Text(
                                          '${widget.list[index].sku} added!'),
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                    print("Send engage event");
                                  }),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
