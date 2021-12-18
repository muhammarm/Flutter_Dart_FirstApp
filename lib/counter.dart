import 'package:coba_flutter/button/button_min.dart';
import 'package:coba_flutter/button/button_plus.dart';
import 'package:coba_flutter/button/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => CounterViewModel(),
          builder: (context, child){
            return Column(
              children: [
                Text('${context.watch<CounterViewModel>().value}', style:  TextStyle(fontSize: 25)),
            Row(
                children: [
                  ButtonCounterMin(),
                  ButtonCounterPlus()
                ],
              )
              ],
            );
          },
          ),
        )
    );
  }
}