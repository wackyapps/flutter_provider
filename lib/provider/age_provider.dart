// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class AgeEligibilityProvider extends ChangeNotifier {
  String _eligibilityMessage = "";
  bool _isEligible = false;

  void checkEligibility(int age) {
    if (age >= 18) {
      EligibleForLicense();
    } else {
      NotEligibleForLicense();
    }
  }

  void EligibleForLicense() {
    _eligibilityMessage = "You are eligible for license";
    _isEligible = true;
    notifyListeners();
  }

  void NotEligibleForLicense() {
    _eligibilityMessage = "You are not eligible for license";
    _isEligible = false;
    notifyListeners();
  }

  String get eligibilityMessage => _eligibilityMessage;
  bool get isEligible => _isEligible;
}
