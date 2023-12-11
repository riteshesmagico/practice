import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyCounterState createState() => _MyCounterState();
}

class _MyCounterState extends State<MyHomePage> {
  int count = 0;

  int increment() {
    setState(() {
      count++;
    });
    return count;
  }

  int decrement() {
    setState(() {
      count--;
    });
    return count;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter:',
              style: TextStyle(fontSize: 30),
            ),
            Text('$count', style: const TextStyle(fontSize: 24))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
