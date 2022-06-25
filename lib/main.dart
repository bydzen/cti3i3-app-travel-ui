import 'package:flutter/material.dart';
import 'package:locavel/screens/home.dart';
// import 'package:LocaVel/screens/places_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LocaVel",
      home: Home(),
    );
  }
}
