import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './app-config.dart';

var app = CupertinoApp(
  //color: primaryColor,
  home: _MyHomePage(),
  //title: title,
);

class _MyHomePage extends StatefulWidget {
  _MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text(title),
      ),
      child: Stack(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child:
              Padding(padding: EdgeInsets.only(right: 10, bottom: 10),
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  child: Icon(Icons.add),
                  tooltip: "Increment",
                ),
              )
        ),
      ]),
    );
  }
}
