import 'package:app_design/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: CustomAppBar(texto: 'For you',),
    );
  }
}