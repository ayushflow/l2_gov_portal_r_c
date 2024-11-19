import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String generateL1KeyValue(
  String keyPrefix,
  String componentName,
  String widget,
) {
  /// Generates a key for Level 1 components.
  ///
  /// - [keyPrefix]: The prefix passed from higher levels (L2 or L3).
  /// - [componentName]: The name of the L1 component.
  /// - [widget]: The specific widget within the L1 component.
  String value = "${keyPrefix}_${componentName}_$widget";

  return value;
}

String generateL2KeyValuePrefix(
  String keyPrefix,
  String componentName,
  String useCase,
) {
  /// Generates a key prefix for Level 2 components.
  ///
  /// - [keyPrefix]: The prefix passed from L3 components.
  /// - [componentName]: The name of the L2 component.
  /// - [useCase]: The specific use case or field within the L2 component.
  String prefixValue = '${keyPrefix}_${componentName}_${useCase}';
  return prefixValue;
}

String generateL3KeyValuePrefix(
  String moduleName,
  String routeName,
) {
  /// Generates a key for Level 3 components.
  ///
  /// - [moduleName]: The name of the module (e.g., 'Onboarding').
  /// - [routeName]: The name of the route or screen (e.g., 'PersonalKYC').
  return "${moduleName}_$routeName";
}
