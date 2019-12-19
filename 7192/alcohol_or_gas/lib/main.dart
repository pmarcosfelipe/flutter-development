import 'package:alcohol_or_gas/widgets/input.widget.dart';
import 'package:alcohol_or_gas/widgets/logo.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcohol or Gas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcoholCtrl = new MoneyMaskedTextController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: ListView(children: <Widget>[
          Logo(),
          Input(
            ctrl: _gasCtrl,
            label: 'Gas',
          ),
          Input(
            ctrl: _alcoholCtrl,
            label: 'Alcohol',
          ),
          Container(
              margin: EdgeInsets.all(30),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60),
              ),
              child: FlatButton(
                child: Text(
                  'CALCULAR',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 25,
                    fontFamily: 'Big Shoulders Display',
                  ),
                ),
                onPressed: () {},
              ))
        ]));
  }
}
