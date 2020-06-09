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
                SizedBox(
                  height: 20,
                ),
                ShoesDescription(
                  title: 'Nike Air Max 720',
                  description:
                      'The Nike Air Max 720 goes bigger than ever before with Nike s taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                ),
                // AddCartButton(mount: 180.0,)
                _MountBuyNow(),
                _ColorsAdd()
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class _ColorsAdd extends StatelessWidget {
  const _ColorsAdd({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
               Positioned(left:90,child: _ButtonColor(
                  color: Color(0xff364D56),)
                ),
               Positioned(left:60,child: _ButtonColor(
                  color: Color(0xff2099F1),)
                ),
               Positioned(left:30,child: _ButtonColor(
                  color: Color(0xffFFAD29),)
                ),
                _ButtonColor(
                  color: Color(0xffC6D642),
                ),
              ],
            ),
          ),
         // Spacer(),
          OrangeButton(
            text: 'More related items',
            height: 30,
            width: 170,
            color: Color(0xffFFC675),
          )
        ],
      ),
    );
  }
}

class _ButtonColor extends StatelessWidget {
  final Color color;
  const _ButtonColor({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}

class _MountBuyNow extends StatelessWidget {
  const _MountBuyNow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(children: <Widget>[
          Text(
            '\$180.0',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          OrangeButton(
            text: 'Buy now',
            width: 100,
            height: 40,
          )
        ]),
      ),
    );
  }
}
