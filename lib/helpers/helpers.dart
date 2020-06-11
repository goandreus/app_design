import 'package:flutter/services.dart' as services;

void changeStatusLight(){
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.light);
}

void changeStatusDark(){
  services.SystemChrome.setSystemUIOverlayStyle(services.SystemUiOverlayStyle.dark);
}