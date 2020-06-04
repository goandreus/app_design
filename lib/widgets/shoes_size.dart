import 'package:flutter/material.dart';

class ShoesSize extends StatelessWidget {
  const ShoesSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            _ShoesShadow(),
          ]
        ),
      ),
    );
  }
}

class _ShoesShadow extends StatelessWidget {
  const _ShoesShadow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Image(image: AssetImage('assets/imgs/azul.png'),),
        ],
      ),
    );
  }
}