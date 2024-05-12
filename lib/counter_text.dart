import 'package:flutter/material.dart';
import 'package:minimalist_state_management/service_locator.dart';

import 'counter_state.dart';

class CounterText extends StatelessWidget {
   CounterText({
    Key? key,
  }) : super(key: key);

// final ValueNotifier<int> _counter;

  @override
  Widget build(BuildContext context) {
    final state = getIt.get<CounterState>();

    return ValueListenableBuilder<int>(
      //The code below listens _counter value, if it changes the state will be updated
       // valueListenable: _counter,
      valueListenable: state.counter,
        builder: (context,counterValue,_) {
          /*
          This area can be used to handle various lightweight operations
          but not the operations such backend request, async operations, filtering
          Because it can effect app performance dramatically.
           */
          Color textColor = counterValue >= 0 ? Colors.green : Colors.red;

          return Text(
            '$counterValue',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color:textColor),
          );
        }
    );
  }
}
