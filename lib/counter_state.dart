import 'package:flutter/cupertino.dart';

class CounterState{
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  ValueNotifier<int> get counter => _counter;

  void incrementCounter() {
    _counter.value++;
    print(_counter.value);
  }

  void decrementCounter() {
    _counter.value--;
    print(_counter.value);
  }

  void resetCounter() {
    _counter.value = 0;
    print(_counter.value);
  }
}
