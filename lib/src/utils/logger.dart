import 'package:flutter/cupertino.dart';
import 'dart:developer' as developer;
class Logger{
  static void log(String msg){
    developer.log(msg, name: "MyLog");
  }
}