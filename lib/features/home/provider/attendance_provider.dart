import 'package:flutter/material.dart';

class AttendanceProvider extends ChangeNotifier {
  String absenStatus = 'Masuk';
  // bool isAbsenClicked = false;

  void updateAbsen() {
    // isAbsenClicked = !isAbsenClicked;

    if (absenStatus == 'Masuk') {
      absenStatus = 'Pulang';
    } else if (absenStatus == 'Pulang') {
      absenStatus = 'Selesai';
    } else if (absenStatus == 'Selesai') {
      absenStatus = 'Masuk';
    }
    notifyListeners();
  }
}
