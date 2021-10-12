import 'package:flutter/material.dart';
import 'package:website/v1_user/nav.dart';
import 'package:website/screens/template_picker.dart';
import 'package:website/screens/templates/intro_experience/in_store.dart';
import 'package:website/screens/templates/intro_experience/start.dart';
import 'package:website/screens/templates/service_based/start.dart';
import 'package:website/screens/templates/storefront1/start.dart';
// import 'package:website/screens/tracking_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TemplatePicker()
        // home: Nav()
        // home: AnimatedServiceStart()
        );
  }
}
