import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({Key key, this.mount}) : super(key: key);

  final double mount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: <Widget>[
            SizedBox(width: 20,),
            Text('\$$mount', style: TextStyle(fontSize: 28, fontWeight:FontWeight.bold)),
            Spacer(), 
            OrangeButton(text: 'Add to cart',),
            SizedBox(width: 20,)
          ]
        ),
      ),
    );
  }
}