import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.grey.shade900,
        scaffoldBackgroundColor: Colors.indigo.shade900,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
