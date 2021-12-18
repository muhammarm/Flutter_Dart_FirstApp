import 'package:flutter/material.dart';
import 'package:coba_flutter/button/counter_viewmodel.dart';
import 'package:provider/src/provider.dart';

class ButtonCounterMin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        height: 50.0,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Colors.red)),
        child: Text("-",
            style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0)),
        textColor: Colors.black,
        color: Colors.amber[100],
        onPressed: () => context.read<CounterViewModel>().decreamentValue(),
      ),
    );
  }
}
