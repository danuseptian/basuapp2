// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    userC;
    passwordC;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    userC.dispose();
    passwordC.dispose();
  }

  TextEditingController userC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  bool isObscure = false;
}
