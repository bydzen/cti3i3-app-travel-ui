import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:LocaVel/screens/home.dart';
// import 'package:LocaVel/screens/places_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:LocaVel/screens/maps.dart';
import 'package:http/http.dart' as http;

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
