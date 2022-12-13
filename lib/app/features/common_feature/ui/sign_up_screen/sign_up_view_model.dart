import 'package:flutter/material.dart';

class SignUpViewModel {
  late final TextEditingController nameController;
  late final TextEditingController surnameController;
  late final TextEditingController mailController;
  late final TextEditingController passwordController;
  late final TextEditingController addressController;

  SignUpViewModel(BuildContext context) {
    nameController = TextEditingController();
    surnameController = TextEditingController();
    mailController = TextEditingController();
    passwordController = TextEditingController();
    addressController = TextEditingController();
  }
}
