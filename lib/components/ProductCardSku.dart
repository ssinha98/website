// import 'package:flutter/material.dart';

// class ProductCardSKU extends StatefulWidget {
//   const ProductCardSKU({
//     Key key,
//   }) : super(key: key);

//   @override
//   _ProductCardSKUState createState() => _ProductCardSKUState();
// }

// class _ProductCardSKUState extends State<ProductCardSKU> {
//   String selectedSize = "";

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 8,
//       child: Container(
//         decoration:
//             BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(90))),
//         height: 400,
//         width: 300,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     Expanded(
//                       flex: 3,
//                       child: Text(
//                         "Product name",
//                         style: TextStyle(fontSize: 25),
//                       ),
//                     ),
//                     Expanded(
//                         flex: 1,
//                         child: new DropdownButton<String>(
//                           hint: Text(selectedSize),
//                           items:
//                               <String>['S', 'M', 'L', 'XL'].map((String value) {
//                             return new DropdownMenuItem<String>(
//                               value: value,
//                               child: new Text(value),
//                             );
//                           }).toList(),
//                           onChanged: (newvalue) {
//                             setState(() {
//                               selectedSize = newvalue;
//                               // cart.add(list[index]);
//                             });
//                           },
//                         ))
//                   ],
//                 ),
//               ),
//               Expanded(
//                 flex: 4,
//                 child: Container(
//                   child: Placeholder(),
//                 ),
//               ),
//               Expanded(
//                   flex: 1,
//                   child: IconButton(
//                     icon: Icon(Icons.add),
//                     onPressed: () {
//                       print("Add to cart - $selectedSize");
//                       setState(() {
//                         // cart.add(category[index]);
//                       });
//                       final snackBar = SnackBar(
//                         duration: Duration(seconds: 3),
//                         content: Text('Added!'),
//                         action: SnackBarAction(
//                           label: 'Undo',
//                           onPressed: () {
//                             print("remove from cart");
//                           },
//                         ),
//                       );

//                       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                     },
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
