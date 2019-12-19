import 'package:alcohol_or_gas/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = '';
  Function reset;

  Success({this.result, this.reset});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            result,
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
      ),
    );
  }
}
