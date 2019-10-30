import 'package:flutter/foundation.dart';

class SignInViewModel with ChangeNotifier{
  int count = 0;

  increment() {
    count++;
    notifyListeners();
  }
}