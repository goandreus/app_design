import 'package:app_design/models/shoes_model.dart';
import 'package:app_design/pages/shoes_desc_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShoesSize extends StatelessWidget {
  const ShoesSize({Key key, this.fullScreen = false,}) : super(key: key);

  final bool fullScreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(!this.fullScreen){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ShoesDescPage()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: (this.fullScreen) ? 5 : 40,
          vertical: (this.fullScreen) ? 5 : 0,
          ),
        child: Container(
          width: double.infinity,
          height: (this.fullScreen) ? 380 : 360,
          decoration: BoxDecoration(
            color: Color(0xffFFCF53),
            borderRadius: 
            (! this.fullScreen)
             ? BorderRadius.circular(50)
             : BorderRadius.only(
               bottomLeft: Radius.circular(50),
               bottomRight: Radius.circular(50),
               topLeft: Radius.circular(40),
               topRight: Radius.circular(40),
               ),
          ),
          child: Column(
            children: <Widget>
            [
              _ShoesShadow(),
              if(!this.fullScreen)
               _ShoesSize()
            ],
            ),
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
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _SizeShoesWhite(
            number: 7,
          ),
          _SizeShoesWhite(
            number: 7.5,
          ),
          _SizeShoesWhite(
            number: 8,
          ),
          _SizeShoesWhite(
            number: 8.5,
          ),
          _SizeShoesWhite(
            number: 9,
          ),
          _SizeShoesWhite(
            number: 9.5,
          ),
        ],
      ),
    );
  }
}

class _SizeShoesWhite extends StatelessWidget {
  final double number;


  const _SizeShoesWhite({
    Key key,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final shoesModel = Provider.of<ShoesModel>(context);  
    return GestureDetector(
      onTap: (){
        final shoesModel = Provider.of<ShoesModel>(context, listen: false);
        shoesModel.size = this.number; 
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          '${number.toString().replaceAll('.0', '')}',
          style: TextStyle(
            color: (this.number == shoesModel.size) ? Colors.white : Colors.orange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: (this.number == shoesModel.size) ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (this.number == shoesModel.size)
                BoxShadow(
                    color: Colors.orange, blurRadius: 10, offset: Offset(0, 5))
            ]),
      ),
    );
  }
}

class _ShoesShadow extends StatelessWidget {

  const _ShoesShadow({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final shoesModel = Provider.of<ShoesModel>(context); 
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Stack(
        children: <Widget>[
          Positioned(bottom: 10, right: 0, child: _Shoes()),
          Image(
            height: 200,
            image: AssetImage(shoesModel.assetImage),
          ),
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
        width: 180,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: [BoxShadow(color: Colors.orange[700], blurRadius: 40)]),
      ),
    );
  }
}
