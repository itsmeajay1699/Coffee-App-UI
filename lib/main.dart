import 'package:coffeappui/const.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: ThemeData(primarySwatch: Colors.orange,brightness: Brightness.dark,textTheme: ajayTheme)
    );
  }
}

