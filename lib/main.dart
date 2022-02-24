import 'package:flutter/material.dart';
import 'package:move_a/home_page.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeCinePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
