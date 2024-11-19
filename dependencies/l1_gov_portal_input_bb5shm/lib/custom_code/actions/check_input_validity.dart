// Automatic FlutterFlow imports
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<bool?> checkInputValidity(
  String? inputText,
  String? regex,
) async {
  if (regex == null || inputText == null) {
    return null;
  }

  RegExp regExp = RegExp(regex);
  bool isValid = regExp.hasMatch(inputText);

  return isValid;
}
