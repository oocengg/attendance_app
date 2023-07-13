import 'package:flutter/material.dart';
import 'package:attendance_app/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

// Add Develop Branch