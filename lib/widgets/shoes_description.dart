import 'package:flutter/material.dart';

class ShoesDescription extends StatelessWidget {
  const ShoesDescription({Key key,@required this.title,@required this.description}) : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(this.title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700 ),),
          SizedBox(height: 20,), 
          Text(this.description, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black54, height: 1.2),)
        ],
      ),
    );
  }
}