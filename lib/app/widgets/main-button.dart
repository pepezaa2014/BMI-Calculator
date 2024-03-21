import 'package:flutter/material.dart';
import 'package:bmi_pepe/app/const/color.dart';
import 'package:bmi_pepe/app/widgets/main-icon.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;

  const PrimaryButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: ConstColors.primaryButton,
            minimumSize: const Size.fromHeight(80),
          ),
          child: const Text(
            'Calculate',
            style: TextStyle(
              color: ConstColors.primaryText,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class IncreaseCircleButton extends StatelessWidget {
  const IncreaseCircleButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: IncreaseButton(), //
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(20),
        ),
        backgroundColor: MaterialStateProperty.all(ConstColors.primaryButton),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.pressed))
              return ConstColors.clickedPrimaryButton;
          },
        ),
      ),
    );
  }
}

class DecreaseCircleButton extends StatelessWidget {
  const DecreaseCircleButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: DecreaseButton(), //
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          const CircleBorder(),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(20),
        ),
        backgroundColor: MaterialStateProperty.all(ConstColors.primaryButton),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (states) {
            if (states.contains(MaterialState.pressed))
              return ConstColors.clickedPrimaryButton;
          },
        ),
      ),
    );
  }
}
