import 'package:flutter/material.dart';
import 'package:flutter_speedometer_gauge/flutter_speedometer_gauge.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  double _value = 80;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speedometer Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_speedometer_gauge')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SpeedometerGauge(
                min: 0,
                max: 240,
                value: _value,
                units: 'km/h',
                majorTickCount: 13,
                minorTicksPerInterval: 6,
                segments: const [
                  GaugeSegment(to: 120, color: Colors.green),
                  GaugeSegment(to: 180, color: Colors.orange),
                  GaugeSegment(to: 240, color: Colors.red),
                ],
              ),
              const SizedBox(height: 24),
              Slider(
                min: 0,
                max: 240,
                value: _value,
                onChanged: (v) => setState(() => _value = v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
