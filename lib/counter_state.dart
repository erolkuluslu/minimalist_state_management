import 'package:flutter/cupertino.dart';

class CounterState{
  ValueNotifier<int> counter = ValueNotifier<int>(0);

  void incrementCounter() {
    counter.value++;
    print(counter.value);
  }
  void decrementCounter() {
    counter.value--;
    print(counter.value);
  }
  void resetCounter() {
    counter.value=0;
    print(counter.value);
  }

}