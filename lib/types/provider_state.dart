import 'package:flutter/material.dart';

class ProviderState extends ChangeNotifier {
  int providerCounter = 0;

  void increaseCounter() {
    providerCounter++;
    notifyListeners();
  }
}
