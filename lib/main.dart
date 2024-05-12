import 'package:flutter/material.dart';
import 'package:minimalist_state_management/appbar_icon.dart';
import 'package:minimalist_state_management/counter_state.dart';
import 'package:minimalist_state_management/service_locator.dart';

import 'counter_text.dart';
/*
State management
our priority goal is not to use setState
xxxx imperative code
✓✓✓✓ reactive code
The code must observe the changes by itself we should not give the order to rebuild itself


 */

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final state = getIt.get<CounterState>();
  //CounterState state = CounterState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: const [Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: AppbarIcon(),
        )],

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            CounterText(),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: state.incrementCounter, child: const Icon(Icons.add)),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: state.decrementCounter, child: const Icon(Icons.remove)),
            ],),
            ElevatedButton(onPressed: state.resetCounter, child: const Icon(Icons.refresh)),


          ],
        ),
      ),
    );
  }
}

