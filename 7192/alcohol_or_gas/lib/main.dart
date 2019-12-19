import 'package:alcohol_or_gas/widgets/input.widget.dart';
import 'package:alcohol_or_gas/widgets/loading-button.widget.dart';
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
          Container(
              margin: EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Compensa utilizar alcohol',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 40,
                      fontFamily: 'Big Shoulders Display',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoadingButton(
                    busy: false,
                    invert: true,
                    func: () {},
                    text: 'CALCULAR NOVAMENTE',
                  ),
                ],
              )),
          Input(
            ctrl: _gasCtrl,
            label: 'Gas',
          ),
          Input(
            ctrl: _alcoholCtrl,
            label: 'Alcohol',
          ),
          LoadingButton(
            busy: true,
            invert: false,
            func: () {},
            text: 'CALCULAR',
          ),
        ]));
  }
}
