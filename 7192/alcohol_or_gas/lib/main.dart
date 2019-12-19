import 'package:alcohol_or_gas/widgets/input.widget.dart';
import 'package:alcohol_or_gas/widgets/loading-button.widget.dart';
import 'package:alcohol_or_gas/widgets/logo.widget.dart';
import 'package:alcohol_or_gas/widgets/submit-form.dart';
import 'package:alcohol_or_gas/widgets/success.widget.dart';
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
        SubmitForm(
          gasCtrl: _gasCtrl,
          alcoholCtrl: _alcoholCtrl,
          submitFunc: () {},
          busy: false,
        ),
      ]),
    );
  }
}
