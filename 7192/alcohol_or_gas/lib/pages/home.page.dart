import 'package:alcohol_or_gas/widgets/logo.widget.dart';
import 'package:alcohol_or_gas/widgets/submit-form.dart';
import 'package:alcohol_or_gas/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _gasCtrl = new MoneyMaskedTextController();
  var _alcoholCtrl = new MoneyMaskedTextController();
  var _busy = false;
  var _completed = false;
  var _resultText = "It's better to use Alcohol";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: AnimatedContainer(
        duration: Duration(milliseconds: 1200),
        color: _color,
        child: ListView(children: <Widget>[
          Logo(),
          _completed
              ? Success(reset: reset, result: _resultText)
              : SubmitForm(
                  gasCtrl: _gasCtrl,
                  alcoholCtrl: _alcoholCtrl,
                  submitFunc: calculate,
                  busy: _busy,
                ),
        ]),
      ),
    );
  }

  Future calculate() {
    double alcohol =
        double.parse(_alcoholCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) /
            100;
    double gas =
        double.parse(_gasCtrl.text.replaceAll(new RegExp(r'[,.]'), '')) / 100;

    double res = alcohol / gas;

    setState(() {
      _color = Colors.deepPurpleAccent;
      _completed = false;
      _busy = true;
    });

    return new Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        res >= 0.7
            ? _resultText = "It's better to use Gas"
            : _resultText = "It's better to use Alcohol";

        _busy = false;
        _completed = true;
      });
    });
  }

  reset() {
    setState(() {
      _color = Colors.deepPurple;
      _alcoholCtrl = new MoneyMaskedTextController();
      _gasCtrl = new MoneyMaskedTextController();
      _completed = false;
      _busy = false;
    });
  }
}
