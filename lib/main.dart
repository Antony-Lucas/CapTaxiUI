import 'package:flutter/material.dart';
import 'package:captaxi/home/initialpage.dart';
import 'package:captaxi/colors/colorpallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CapTaxi',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Wellcome(),
    );
  }
}
