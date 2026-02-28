import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cicddemo/widgets/counter_widget.dart';

void main() {
  testWidgets('Counter increments correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: CounterWidget(),
        ),
      ),
    );

    // Verify initial value
    expect(find.text('Count: 0'), findsOneWidget);

    // Tap button
    await tester.tap(find.byKey(const Key('increment_button')));
    await tester.pump();

    // Verify incremented value
    expect(find.text('Count: 1'), findsOneWidget);
  });
}