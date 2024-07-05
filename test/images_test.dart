import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:calender_flutter/core/utils/assets/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.iconArrowDownFill).existsSync(), isTrue);
    expect(File(Images.iconArrowSquareDownBig).existsSync(), isTrue);
    expect(File(Images.iconArrowSquareDown).existsSync(), isTrue);
    expect(File(Images.iconArrowUpFill).existsSync(), isTrue);
    expect(File(Images.iconCheckBox).existsSync(), isTrue);
    expect(File(Images.iconEditBox).existsSync(), isTrue);
    expect(File(Images.iconReview).existsSync(), isTrue);
    expect(File(Images.iconTestPrep).existsSync(), isTrue);
  });
}
