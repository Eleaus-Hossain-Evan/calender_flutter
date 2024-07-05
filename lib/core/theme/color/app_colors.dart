import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color white = Color(0xffFFFFFF);
  static const Color borderColor = Color(0xffD0D5DD);
  static const Color textColor = Color(0xff101828);

  static const Color complete = Color(0xff717BBC);
  static const Color completeContainer = Color(0xffEAECF5);
  static const Color checkIn = Color(0xff039855);
  static const Color checkInContainer = Color(0xffECFDF3);
  static const Color testPrep = Color(0xffD92D20);
  static const Color testPrepContainer = Color(0xffFEF3F2);
  static const Color practice = Color(0xff0086C9);
  static const Color practiceContainer = Color(0xffF0F9FF);
  static const Color review = Color(0xffDC6803);
  static const Color reviewContainer = Color(0xffFEF0C7);

  static const int _primaryPrimaryValue = 0xff9e77ed;

  static const MaterialColor primary = MaterialColor(_primaryPrimaryValue, {
    25: Color(0xfffcfcfc),
    50: Color(0xFFf9f5ff),
    100: Color(0xFFf4ebff),
    200: Color(0xFFe9d7fe),
    300: Color(0xFFd6bbfb),
    400: Color(0xFFb692f6),
    500: Color(_primaryPrimaryValue),
    600: Color(0xFF7f56d9),
    700: Color(0xFF6941c6),
    800: Color(0xFF53389e),
    900: Color(0xFF42307d),
  });

  static const int _errorPrimaryValue = 0xfff04438;

  static const MaterialColor error = MaterialColor(_errorPrimaryValue, {
    25: Color(0xfffffbfa),
    50: Color(0xFFfef3f2),
    100: Color(0xFFfee4e2),
    200: Color(0xFFfecdca),
    300: Color(0xFFfda29b),
    400: Color(0xFFf97066),
    500: Color(_errorPrimaryValue),
    600: Color(0xFFd92d20),
    700: Color(0xFFb42318),
    800: Color(0xFF912018),
    900: Color(0xFF7a271a),
  });

  static const int _warningPrimaryValue = 0xfff79009;

  static const MaterialColor warning = MaterialColor(_warningPrimaryValue, {
    25: Color(0xfffffcf5),
    50: Color(0xFFfffaeb),
    100: Color(0xFFfef0c7),
    200: Color(0xFFfedf89),
    300: Color(0xFFfec84b),
    400: Color(0xFFfdb022),
    500: Color(_warningPrimaryValue),
    600: Color(0xFFdc6803),
    700: Color(0xFFb54708),
    800: Color(0xFF93370d),
    900: Color(0xFF792e0d),
  });

  static const int _successPrimaryValue = 0xff12b76a;

  static const MaterialColor success = MaterialColor(_successPrimaryValue, {
    25: Color(0xfff6fef9),
    50: Color(0xFFecfdf3),
    100: Color(0xFFd1fadf),
    200: Color(0xFFa6f4c5),
    300: Color(0xFF6ce9a6),
    400: Color(0xFF32d583),
    500: Color(_successPrimaryValue),
    600: Color(0xFF039855),
    700: Color(0xFF027a48),
    800: Color(0xFF05603a),
    900: Color(0xFF054f31),
  });

  static const int _grayPrimaryValue = 0xff667085;

  static const MaterialColor gray = MaterialColor(_grayPrimaryValue, {
    25: Color(0xfffcfcfd),
    50: Color(0xFFf9fafb),
    100: Color(0xFFf2f4f7),
    200: Color(0xFFe4e7ec),
    300: Color(0xFFd0d5dd),
    400: Color(0xFF98a2b3),
    500: Color(_grayPrimaryValue),
    600: Color(0xFF475467),
    700: Color(0xFF344054),
    800: Color(0xFF1d2939),
    900: Color(0xFF101828),
  });

  static const int _blueGrayPrimaryValue = 0xff4e5ba6;

  static const MaterialColor blueGray = MaterialColor(_blueGrayPrimaryValue, {
    25: Color(0xfffcfcfd),
    50: Color(0xFFf8f9fc),
    100: Color(0xFFeaecf5),
    200: Color(0xFFc8cce5),
    300: Color(0xFF9ea5d1),
    400: Color(0xFF717bbc),
    500: Color(_blueGrayPrimaryValue),
    600: Color(0xFF3e4784),
    700: Color(0xFF363f72),
    800: Color(0xFF293056),
    900: Color(0xFF101323),
  });

  static const int _blueLightPrimaryValue = 0xff0ba5ec;

  static const MaterialColor blueLight = MaterialColor(_blueLightPrimaryValue, {
    25: Color(0xfff5fbff),
    50: Color(0xFFf0f9ff),
    100: Color(0xFFe0f2fe),
    200: Color(0xFFb9e6fe),
    300: Color(0xFF7cd4fd),
    400: Color(0xFF36bffa),
    500: Color(_blueLightPrimaryValue),
    600: Color(0xFF0086c9),
    700: Color(0xFF026aa2),
    800: Color(0xFF065986),
    900: Color(0xFF0b4a6f),
  });

  static const int _bluePrimaryValue = 0xff2e90fa;

  static const MaterialColor blue = MaterialColor(_bluePrimaryValue, {
    25: Color(0xfff5faff),
    50: Color(0xFFeff8ff),
    100: Color(0xFFd1e9ff),
    200: Color(0xFFb2ddff),
    300: Color(0xFF84caff),
    400: Color(0xFF53b1fd),
    500: Color(_bluePrimaryValue),
    600: Color(0xFF1570ef),
    700: Color(0xFF175cd3),
    800: Color(0xFF1849a9),
    900: Color(0xFF194185),
  });
}
