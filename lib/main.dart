import 'package:app_design/pages/shoes_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design App',
      debugShowCheckedModeBanner: false,
      home: ShoesPage(),
    );
  }
}