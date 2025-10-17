# flutter_speedometer_gauge

A lightweight, fully-customizable speedometer / gauge widget for Flutter with segments, ticks, labels, and an animated needle.

## Features

- Animated needle with easing
- Colored arc segments (with optional per-segment thickness)
- Major/minor ticks + numeric labels
- Customizable start/sweep angles (e.g., 240° automotive layout)
- Center value + optional units

## Demo

![Demo](https://raw.githubusercontent.com/abqamar/flutter_speedometer_gauge/refs/heads/main/sample_video/speedometer.gif)

## Install

```yaml
dependencies:
  flutter_speedometer_gauge: ^0.1.0
```

### Usage

```dart
import 'package:flutter_speedometer_gauge/flutter_speedometer_gauge.dart';

SpeedometerGauge(
  min: 0,
  max: 240,
  value: 126,
  units: 'km/h',
  segments: const [
    GaugeSegment(to: 120, color: Colors.green),
    GaugeSegment(to: 180, color: Colors.orange),
    GaugeSegment(to: 240, color: Colors.red),
  ],
  // Optional:
  size: 260,
  startAngleDeg: 150,
  sweepAngleDeg: 240,
  majorTickCount: 7,
  minorTicksPerInterval: 4,
);
```

### Tips
- For compact UIs, reduce size and majorTickCount.
- For a semicircle gauge, set startAngleDeg: 180 and sweepAngleDeg: 180.
- To hide ticks entirely, set showTicks: false.

