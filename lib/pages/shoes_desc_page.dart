import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ShoesDescPage extends StatelessWidget {
  const ShoesDescPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        ShoesSize(fullScreen: true),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                ShoesDescription(
                  title: 'Nike Air Max 720',
                  description:
                      'The Nike Air Max 720 goes bigger than ever before with Nike s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
