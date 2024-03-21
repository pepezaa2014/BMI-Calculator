import 'package:bmi_pepe/app/const/sort_gender.dart';
import 'package:bmi_pepe/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:bmi_pepe/app/const/color.dart';
import 'package:bmi_pepe/app/widgets/main-button.dart';
import 'package:bmi_pepe/app/widgets/main-text.dart';
import 'package:bmi_pepe/app/widgets/main-container.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.mainBackground,
      appBar: AppBar(
        backgroundColor: ConstColors.mainBackground,
        title: AppbarText(
          text: 'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Obx(
      () {
        final gender = controller.gender.value;
        return Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: SortGender.values
                    .map(
                      (e) => Expanded(
                        child: ImageContainer(
                          onPressed: controller.setGender,
                          gender: e,
                          selectedGender: gender,
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliderContainer(
              primaryText: 'Height',
              secondaryText: controller.height.value.toString(),
              value: controller.height.value,
              valueFixed: controller.height.value.toStringAsFixed(0),
              onChanged: controller.setNewHeight,
            ),
            Row(
              children: [
                Expanded(
                  child: ContainerWithCircle(
                    primaryText: controller.weight.value.toString(),
                    secondaryText: 'Weight',
                    onPressedDecrease: controller.decreaseWeight,
                    onPressedIncrease: controller.increaseWeight,
                  ),
                ),
                Expanded(
                  child: ContainerWithCircle(
                    primaryText: controller.age.value.toString(),
                    secondaryText: 'Age',
                    onPressedDecrease: controller.decreaseAge,
                    onPressedIncrease: controller.increaseAge,
                  ),
                ),
              ],
            ),
            PrimaryButton(
              onPressed: controller.onTapResult,
            ),
          ],
        );
      },
    );
  }
}
