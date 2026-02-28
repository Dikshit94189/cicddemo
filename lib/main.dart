import 'package:cicddemo/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      home: CounterWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTime = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "🚀 CI/CD LIVE DEMO First push code to github then build web then do fifrebase deploy auto code update",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Last Build Time:",
              style: TextStyle(color: Colors.grey[400], fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              currentTime.toString(),
              style: const TextStyle(
                color: Colors.green,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Push code → Auto Deploy → Refresh browser",
              style: TextStyle(color: Colors.white70),
            )
          ],
        ),
      ),
    );
  }
}