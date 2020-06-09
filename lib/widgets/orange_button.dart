import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({Key key,@required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.orange,
      ),
      child: Text('$text', style: TextStyle(color: Colors.white),),
    );
  }
}