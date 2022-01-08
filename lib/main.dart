import 'package:flutter/material.dart';
import 'package:flutter_application_16/home.dart';
import 'package:flutter_application_16/timer.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => TimerModel1(),
        child: MyHome1(),
      ),
    );
  }
}
