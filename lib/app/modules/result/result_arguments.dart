import 'package:bmi_pepe/app/const/sort_gender.dart';
import 'package:bmi_pepe/app/modules/home/controllers/home_controller.dart';

class ResultArguments {
  final int age;
  final double bmi;
  final SortGender gender;

  ResultArguments({
    required this.age,
    required this.bmi,
    required this.gender,
  });

  String get argument {
    switch (gender) {
      case SortGender.female:
        return femaleArgument;
      case SortGender.male:
        return maleArgument;
    }
  }

  String get femaleArgument {
    if (age >= 18 && age <= 24) {
      if (bmi < 19.0) {
        return 'Underweight';
      } else if (bmi <= 24.0) {
        return 'Normal weight';
      } else if (bmi <= 29.0) {
        return 'Overweight';
      } else if (bmi <= 39.0) {
        return 'Adiposity';
      } else if (bmi > 39.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 25 && age <= 34) {
      if (bmi < 20.0) {
        return 'Underweight';
      } else if (bmi <= 25.0) {
        return 'Normal weight';
      } else if (bmi <= 30.0) {
        return 'Overweight';
      } else if (bmi <= 40.0) {
        return 'Adiposity';
      } else if (bmi > 40.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 35 && age <= 44) {
      if (bmi < 21.0) {
        return 'Underweight';
      } else if (bmi <= 26.0) {
        return 'Normal weight';
      } else if (bmi <= 31.0) {
        return 'Overweight';
      } else if (bmi <= 41.0) {
        return 'Adiposity';
      } else if (bmi > 41.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 45 && age <= 54) {
      if (bmi < 22.0) {
        return 'Underweight';
      } else if (bmi <= 27.0) {
        return 'Normal weight';
      } else if (bmi <= 32.0) {
        return 'Overweight';
      } else if (bmi <= 42.0) {
        return 'Adiposity';
      } else if (bmi > 42.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 55 && age <= 64) {
      if (bmi < 23.0) {
        return 'Underweight';
      } else if (bmi <= 28.0) {
        return 'Normal weight';
      } else if (bmi <= 33.0) {
        return 'Overweight';
      } else if (bmi <= 43.0) {
        return 'Adiposity';
      } else if (bmi > 43.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 65) {
      if (bmi < 24.0) {
        return 'Underweight';
      } else if (bmi <= 29.0) {
        return 'Normal weight';
      } else if (bmi <= 34.0) {
        return 'Overweight';
      } else if (bmi <= 44.0) {
        return 'Adiposity';
      } else if (bmi > 44.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else {
      return 'Undefined Information';
    }
  }

  String get maleArgument {
    if (age >= 18 && age <= 24) {
      if (bmi < 20.0) {
        return 'Underweight';
      } else if (bmi <= 25.0) {
        return 'Normal weight';
      } else if (bmi <= 30.0) {
        return 'Overweight';
      } else if (bmi <= 40.0) {
        return 'Adiposity';
      } else if (bmi > 40.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 25 && age <= 34) {
      if (bmi < 21.0) {
        return 'Underweight';
      } else if (bmi <= 26.0) {
        return 'Normal weight';
      } else if (bmi <= 31.0) {
        return 'Overweight';
      } else if (bmi <= 41.0) {
        return 'Adiposity';
      } else if (bmi > 41.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 35 && age <= 44) {
      if (bmi < 22.0) {
        return 'Underweight';
      } else if (bmi <= 27.0) {
        return 'Normal weight';
      } else if (bmi <= 32.0) {
        return 'Overweight';
      } else if (bmi <= 42.0) {
        return 'Adiposity';
      } else if (bmi > 42.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 45 && age <= 54) {
      if (bmi < 23.0) {
        return 'Underweight';
      } else if (bmi <= 28.0) {
        return 'Normal weight';
      } else if (bmi <= 33.0) {
        return 'Overweight';
      } else if (bmi <= 43.0) {
        return 'Adiposity';
      } else if (bmi > 43.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 55 && age <= 64) {
      if (bmi < 24.0) {
        return 'Underweight';
      } else if (bmi <= 29.0) {
        return 'Normal weight';
      } else if (bmi <= 34.0) {
        return 'Overweight';
      } else if (bmi <= 44.0) {
        return 'Adiposity';
      } else if (bmi > 44.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else if (age >= 65) {
      if (bmi < 25.0) {
        return 'Underweight';
      } else if (bmi <= 30.0) {
        return 'Normal weight';
      } else if (bmi <= 35.0) {
        return 'Overweight';
      } else if (bmi <= 45.0) {
        return 'Adiposity';
      } else if (bmi > 45.0) {
        return 'Severe adiposity';
      } else {
        return 'Invalid BMI value';
      }
    } else {
      return 'Undefined Information';
    }
  }
}
