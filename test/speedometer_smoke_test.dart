import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_speedometer_gauge/flutter_speedometer_gauge.dart';

void main() {
  testWidgets('renders without crash and shows value', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: SpeedometerGauge(
          min: 0,
          max: 100,
          value: 42,
          units: 'km/h',
          segments: [
            GaugeSegment(to: 60, color: Colors.green),
            GaugeSegment(to: 100, color: Colors.red),
          ],
        ),
      ),
    ));

    // settle animation
    await tester.pumpAndSettle();

    expect(find.text('42'), findsOneWidget);
    expect(find.text('km/h'), findsOneWidget);
  });
}
