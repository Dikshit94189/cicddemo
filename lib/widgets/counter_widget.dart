import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CI CD EXAMPEL')),
      body:  SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First add .github/workflows/flutter_ci.yml file inside the project \n 2. Add the firebase file into setting of github \n 3. push code then one time flutter build web then firebase deploy change on Monday"),
            Text("Again Deploy on firebase is done"),
            Text("5 MArch"),
            Text(
              'Count: $count',
              key: const Key('counter_text'),
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              key: const Key('increment_button'),
              onPressed: increment,
              child: const Text("Increment"),
            )
          ],
        ),
      ),
    );
  }
}