import 'package:desktop/screens/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Instagram Clone",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.black),
    home: Home(),
  ));
}
