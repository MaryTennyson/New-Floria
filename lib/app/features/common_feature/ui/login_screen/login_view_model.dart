import 'package:flutter/cupertino.dart';

class LoginViewModel {
  late final TextEditingController mailController;
  late final TextEditingController passwordController;

  LoginViewModel(BuildContext context) {
    mailController = TextEditingController();
    passwordController = TextEditingController();
  }
}
