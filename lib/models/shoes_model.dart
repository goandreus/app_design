import 'package:flutter/material.dart';

class ShoesModel with ChangeNotifier{
  String _assetImage = 'assets/imgs/azul.png';
  double _size = 9.0;

  String get assetImage => this._assetImage;
  set assetImage (String valor){
    this._assetImage = valor;
    notifyListeners();
  }

  double get size => this._size;
  set size (double valor){
    this._size = valor;
    notifyListeners();
  }
}