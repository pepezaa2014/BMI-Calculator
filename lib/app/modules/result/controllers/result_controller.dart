import 'package:bmi_pepe/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi_pepe/app/modules/result/result_arguments.dart';

class ResultController extends GetxController {
  final String recomend = "";

  late final ResultArguments resultArguments;

  @override
  void onInit() {
    super.onInit();
    resultArguments = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String showArgument() {
    return 'Now you are ' + resultArguments.argument.toString();
  }

  String showStatus() {
    return resultArguments.argument.toString();
  }
}
