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
          Positioned(
            bottom: 20,
            right: 0,
            child: _Shoes()),
          Image(image: AssetImage('assets/imgs/azul.png'),),
        ],
      ),
    );
  }
}

class _Shoes extends StatelessWidget {
  const _Shoes({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Colors.orange[700], blurRadius: 40)
          ]
        ),
      ),
    );
  }
}