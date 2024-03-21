import 'package:bmi_pepe/resources/resources.dart';

enum SortGender {
  male,
  female,
}

extension SortTypeExtension on SortGender {
  String get title {
    switch (this) {
      case SortGender.male:
        return 'Male';
      case SortGender.female:
        return 'Female';
    }
  }

  String get Image {
    switch (this) {
      case SortGender.male:
        return ImageName.male;
      case SortGender.female:
        return ImageName.female;
    }
  }
}
