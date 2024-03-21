import 'package:flutter/material.dart';
import 'package:bmi_pepe/app/const/color.dart';

class PrimaryText extends StatelessWidget {
  const PrimaryText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ConstColors.primaryText,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ConstColors.secondaryText,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SecondaryText extends StatelessWidget {
  const SecondaryText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16,
        color: ConstColors.secondaryText,
      ),
    );
  }
}

class ResultText extends StatelessWidget {
  const ResultText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24,
        color: ConstColors.resultArgument,
      ),
    );
  }
}

class ArgumentText extends StatelessWidget {
  const ArgumentText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          fontSize: 24,
          color: ConstColors.secondaryText,
        ),
      ),
    );
  }
}

class ResultBmi extends StatelessWidget {
  const ResultBmi({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 60,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class AppbarText extends StatelessWidget {
  const AppbarText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: ConstColors.primaryText,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
