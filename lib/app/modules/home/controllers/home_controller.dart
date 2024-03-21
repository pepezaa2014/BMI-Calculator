import 'package:bmi_pepe/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi_pepe/app/modules/result/result_arguments.dart';
import 'package:bmi_pepe/app/const/sort_gender.dart';

class HomeController extends GetxController {
  double bmi = 0;
  final RxInt age = 18.obs;
  final RxDouble height = 120.0.obs;
  final RxInt weight = 45.obs;
  final Rx<SortGender> gender = SortGender.male.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setGender(SortGender sex) {
    gender.value = sex;
  }

  void onTapResult() {
    final resultArguments = ResultArguments(
      age: age.value,
      bmi: weight.value / ((height.value / 100) * (height.value / 100)),
      gender: gender.value,
    );

    Get.toNamed(Routes.RESULT, arguments: resultArguments);
  }

  void increaseAge() => age.value++;
  void decreaseAge() {
    if (age.value > 1) {
      age.value--;
    }
  }

  void increaseWeight() => weight.value++;
  void decreaseWeight() {
    if (weight.value > 1) {
      weight.value--;
    }
  }

  void setNewHeight(double newHeight) {
    height.value = newHeight;
  }
}
