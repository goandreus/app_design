import 'package:animate_do/animate_do.dart';
import 'package:app_design/helpers/helpers.dart';
import 'package:app_design/models/shoes_model.dart';
import 'package:app_design/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoesDescPage extends StatelessWidget {
  const ShoesDescPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   // changeStatusLight();
    return Scaffold(
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Hero(
            tag: 'shoes-1',
            child: ShoesSize(fullScreen: true)),
          Positioned(
            top: 80,
            child: FloatingActionButton(
              onPressed: (){
              //  changeStatusLight();
                 Navigator.pop(context);
              },
              child: Icon(Icons.chevron_left, color: Colors.white, size: 60,),
              elevation: 0,
              highlightElevation: 0,
              backgroundColor: Colors.transparent,
            ) 
          ),
          
        ],),
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
                _ColorsAdd(),
                _ButtonLikeCartSettings()
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class _ButtonLikeCartSettings extends StatelessWidget {
  const _ButtonLikeCartSettings({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical:30),
      padding: EdgeInsets.symmetric(horizontal:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _ShadowButton(icon: Icon(Icons.star, color: Colors.red, size: 25,),),
          _ShadowButton(icon: Icon(Icons.add_shopping_cart, color: Colors.grey.withOpacity(0.4), size: 25,),),
          _ShadowButton(icon: Icon(Icons.settings, color: Colors.grey.withOpacity(0.4), size: 25,),),
        ]
      ),
    );
  }
}

class _ShadowButton extends StatelessWidget {

  final Icon icon;
  
  const _ShadowButton({
    Key key, @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: this.icon,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: -5,
            blurRadius: 20,
            offset: Offset(0,1)
          )
        ]
      ),
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
                  color: Color(0xff364D56), index: 4, urlImagen: 'assets/imgs/negro.png')
                ),
               Positioned(left:60,child: _ButtonColor(
                  color: Color(0xff2099F1), index: 3, urlImagen: 'assets/imgs/azul.png')
                ),
               Positioned(left:30,child: _ButtonColor(
                  color: Color(0xffFFAD29),index: 2, urlImagen: 'assets/imgs/amarillo.png' )
                ), 
                _ButtonColor(
                  color: Color(0xffC6D642), index: 1, urlImagen: 'assets/imgs/verde.png',
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
  final int index;
  final String urlImagen;
  
  const _ButtonColor({
    Key key,
    this.color, this.index, this.urlImagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: this.index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: (){
          final shoesModel = Provider.of<ShoesModel>(context, listen: false);
          shoesModel.assetImage = this.urlImagen;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
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
          Bounce(
            delay: Duration(seconds: 1),
            child: OrangeButton( 
              text: 'Buy now',
              width: 100,
              height: 40,
            ),
          )
        ]),
      ),
    );
  }
}
