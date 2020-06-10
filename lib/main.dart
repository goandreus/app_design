import 'package:app_design/models/shoes_model.dart';
import 'package:app_design/pages/shoes_desc_page.dart';
import 'package:app_design/pages/shoes_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => 
runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ShoesModel(),),
    ],
  child: MyApp()
  ));
 
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