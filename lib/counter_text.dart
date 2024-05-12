import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  const CounterText({
    super.key,
    required ValueNotifier<int> counter,
  }) : _counter = counter;

  final ValueNotifier<int> _counter;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      //the code below listens _counter value, if it changes the state will be updated
        valueListenable: _counter,
        builder: (context,counterValue,_) {
          /*
          this area can be used to handle various lightweight operations
          but not the operations such backend request, async operations, filtering
          Because it can effect app performance dramatically.
           */
          return Text(
            '$counterValue',
            style: Theme.of(context).textTheme.headlineMedium,
          );
        }
    );
  }
}
