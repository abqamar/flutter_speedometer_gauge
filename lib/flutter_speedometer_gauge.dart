/// A lightweight, fully-customizable speedometer / gauge widget for Flutter.
///
/// ### Features
/// * Animated needle with easing
/// * Colored arc segments with per-segment thickness
/// * Major/minor ticks + numeric labels
/// * Angle + sweep customization (e.g., 240° "automotive" sweep)
/// * Center value + optional units text
///
/// ### Quick start
/// ```dart
/// SpeedometerGauge(
///   min: 0,
///   max: 240,
///   value: 126,
///   units: 'km/h',
///   segments: const [
///     GaugeSegment(to: 120, color: Color(0xFF4CAF50)),
///     GaugeSegment(to: 180, color: Color(0xFFFFC107)),
///     GaugeSegment(to: 240, color: Color(0xFFF44336)),
///   ],
/// )
/// ```
///
/// See `/example` for a full app.
///
/// © 2025 Your Name. MIT license.
library flutter_speedometer_gauge;

export 'src/speedometer_gauge.dart' show SpeedometerGauge, GaugeSegment;
