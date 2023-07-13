import 'package:flutter/material.dart';

class ValidatorProvider extends ChangeNotifier {
  String? validateUsername(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email tidak boleh kosong';
    }

    return null; // validasi berhasil
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Kata sandi tidak boleh kosong';
    }
    if (value.length < 8) {
      return 'Minimal 8 karakter';
    }

    return null; // validasi berhasil
  }
}
