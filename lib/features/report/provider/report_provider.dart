import 'package:flutter/material.dart';

class ReportProvider extends ChangeNotifier {
  DateTime selectedDate = DateTime.now();

  void updateSelectedDate(DateTime date) {
    selectedDate = date;
    notifyListeners();
  }
}
