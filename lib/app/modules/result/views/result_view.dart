import 'package:bmi_pepe/app/modules/result/result_arguments.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/result_controller.dart';
import 'package:bmi_pepe/app/widgets/main-container.dart';
import 'package:bmi_pepe/app/widgets/main-text.dart';
import 'package:bmi_pepe/app/const/color.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.mainBackground,
      appBar: AppBar(
        backgroundColor: ConstColors.mainBackground,
        title: AppbarText(
          text: 'Your Result',
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return ShowResult(
      result: controller.showStatus(),
      bmi: controller.resultArguments.bmi.toStringAsFixed(1),
      argument: controller.showArgument(),
    );
  }
}
