import 'package:flutter/material.dart';
import 'package:bmi_pepe/app/const/color.dart';
import 'package:bmi_pepe/app/widgets/main-text.dart';
import 'package:bmi_pepe/app/widgets/main-button.dart';
import 'package:bmi_pepe/app/const/sort_gender.dart';

class ShowResult extends StatelessWidget {
  const ShowResult({
    super.key,
    required this.argument,
    required this.bmi,
    required this.result,
  });
  final String argument;
  final String bmi;
  final String result;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            color: Color.fromARGB(255, 101, 87, 87),
          ),
          child: Column(
            children: [
              Expanded(
                child: Align(
                    child: ResultText(
                  text: result,
                )),
              ),
              Expanded(
                child: Align(
                  child: ResultBmi(
                    text: bmi,
                  ),
                ),
              ),
              Expanded(
                child: ArgumentText(
                  text: argument,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
    required this.onPressed,
    required this.gender,
    required this.selectedGender,
  });
  final SortGender gender;
  final SortGender selectedGender;
  final Function(SortGender) onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          backgroundColor: gender == selectedGender
              ? Color.fromARGB(255, 202, 182, 182)
              : Color.fromARGB(255, 101, 87, 87),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                gender.Image,
                color: ConstColors.primaryText,
              ),
            ),
            const Divider(
              color: ConstColors.containerBackground,
            ),
            IconText(
              text: gender.title,
            ),
          ],
        ),
        onPressed: () => onPressed(gender),
      ),
    );
  }
}

class ContainerWithCircle extends StatelessWidget {
  const ContainerWithCircle({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.onPressedDecrease,
    required this.onPressedIncrease,
  });
  final String primaryText;
  final String secondaryText;
  final Function() onPressedDecrease;
  final Function() onPressedIncrease;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Color.fromARGB(255, 101, 87, 87),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Divider(
                color: Color.fromARGB(255, 101, 87, 87),
              ),
              SecondaryText(
                text: secondaryText,
              ),
              const Divider(
                color: Color.fromARGB(255, 101, 87, 87),
              ),
              PrimaryText(text: primaryText),
              Row(
                children: [
                  Expanded(
                    child: DecreaseCircleButton(
                      onPressed: onPressedDecrease,
                    ),
                  ),
                  Expanded(
                    child: IncreaseCircleButton(
                      onPressed: onPressedIncrease,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SliderContainer extends StatelessWidget {
  const SliderContainer({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.value,
    required this.valueFixed,
    required this.onChanged,
  });

  final String primaryText;
  final String secondaryText;
  final String valueFixed;
  final double value;
  final Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Color.fromARGB(255, 101, 87, 87),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Divider(
                    color: Color.fromARGB(255, 101, 87, 87),
                  ),
                  SecondaryText(
                    text: primaryText,
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 101, 87, 87),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrimaryText(
                        text: valueFixed,
                      ),
                      const Text(
                        ' cm',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: value,
                    min: 120,
                    max: 230,
                    thumbColor: Colors.redAccent,
                    activeColor: Colors.redAccent,
                    onChanged: onChanged,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
