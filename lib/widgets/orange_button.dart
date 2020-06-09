import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton({Key key,@required this.text, this.width = 150, this.height = 50}) : super(key: key);

  final double width;
  final double height;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.orange,
      ),
      child: Text('$text', style: TextStyle(color: Colors.white),),
    );
  }
}