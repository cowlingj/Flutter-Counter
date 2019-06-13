import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import './android-base.dart' as android;
import './ios-base.dart' as ios;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return ios.app;
    }

    if (Platform.isAndroid) {
      return android.app;
    }

    return Placeholder();
  }
}