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
            _ShoesSize()
          ]
        ),
      ),
    );
  }
}

class _ShoesSize extends StatelessWidget {
  const _ShoesSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeShoesWhite( number: 7, ),
          _SizeShoesWhite( number: 7.5, ), 
          _SizeShoesWhite( number: 8, ), 
          _SizeShoesWhite( number: 8.5, ), 
          _SizeShoesWhite( number: 9, ), 
          _SizeShoesWhite( number: 9.5, ),  
        ],
      ),
    );
  }
}

class _SizeShoesWhite extends StatelessWidget {

  final double number;
  

  const _SizeShoesWhite({
    Key key, this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('${number.toString().replaceAll('.0', '' )}', 
      style: TextStyle(
        color: Colors.red,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),),
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
        //TODO:  BoxShadow
        ]
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