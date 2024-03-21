import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:bmi_pepe/resources/resources.dart';

void main() {
  test('image_name assets test', () {
    expect(File(ImageName.female).existsSync(), true);
    expect(File(ImageName.male).existsSync(), true);
  });
}
