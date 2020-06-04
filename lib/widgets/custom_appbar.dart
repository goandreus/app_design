import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key,@required this.texto}) : super(key: key);
  
  final String texto;

  //CustomAppBar({@required this.texto});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal:20),
        child: Container(
          margin: EdgeInsets.only(top:30),
          width: double.infinity,
          //height: 150,
          //color: Colors.red,
          child: Row(
            children: <Widget>[
              Text(this.texto, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700 ),),
              Spacer(),
              Icon(Icons.search,size: 30,)
            ],
          ),
        ),
      ),
    );
  }
}