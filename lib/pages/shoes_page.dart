import 'package:app_design/helpers/helpers.dart';
import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //changeStatusDark();
    return Scaffold(
        body: Column(children: <Widget>[
      CustomAppBar(
        texto: 'For You  ',
      ),
      SizedBox(
        height: 20,
      ),
      Expanded(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Hero(
                tag: 'shoes-1',
                child: ShoesSize()
                ),
              SizedBox(
                height: 20,
              ),
              ShoesDescription(
                title: 'Nike Air Max 720',
                description:
                    'The Nike Air Max 720 goes bigger than ever before with Nike s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
              ),
            ],
          ),
        ),
      ),
      AddCartButton(mount: 180.0)
    ])
        //body: CustomAppBar(texto: 'For you',),
        );
  }
}
