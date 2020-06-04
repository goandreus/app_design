import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(texto: 'For You  ',),
          SizedBox(height: 20,),
          ShoesSize(),  
        ]
      )
     //body: CustomAppBar(texto: 'For you',),
    );
  }
}