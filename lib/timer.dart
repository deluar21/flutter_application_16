import 'package:flutter/foundation.dart';

class TimerModel1 extends ChangeNotifier {
  int _counter = 60;
  getCounter() => _counter;
  updateCounter() {
    _counter--;

    notifyListeners();
  }
}
