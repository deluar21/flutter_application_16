import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_16/timer.dart';
import 'package:provider/provider.dart';

class MyHome1 extends StatefulWidget {
  const MyHome1({Key? key}) : super(key: key);

  @override
  _MyHome1State createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 1), (timer) {
      var timerModel1 = Provider.of<TimerModel1>(context, listen: false);
      timerModel1.updateCounter();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHome1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              'https://media.istockphoto.com/photos/stopwatch-front-view-picture-id159756787',
              scale: 6,
            ),
            SizedBox(
              height: 10,
            ),
            Consumer<TimerModel1>(builder: (context, data, child) {
              return Text(
                data.getCounter().toString(),
                textScaleFactor: 2,
              );
            }),
          ],
        ),
      ),
    );
  }
}
