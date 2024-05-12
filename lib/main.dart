import 'package:flutter/material.dart';

import 'counter_text.dart';
/*
State management
our priority goal is not to use setState
xxxx imperative code
✓✓✓✓ reactive code
The code must observe the changes by itself we should not give the order to rebuild itself


 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  //int _counter = 0;
   ValueNotifier<int> _counter = ValueNotifier<int>(0);

  void _incrementCounter() {
      _counter.value++;
      print(_counter.value);
  }
   void _decrementCounter() {
     _counter.value--;
     print(_counter.value);
   }
   void _resetCounter() {
     _counter.value=0;
     print(_counter.value);
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            CounterText(counter: _counter),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(onPressed: _incrementCounter, child: const Icon(Icons.add)),
              const SizedBox(width: 10,),
              ElevatedButton(onPressed: _decrementCounter, child: const Icon(Icons.remove)),
            ],),
            ElevatedButton(onPressed: _resetCounter, child: const Icon(Icons.refresh)),


          ],
        ),
      ),
    );
  }
}

