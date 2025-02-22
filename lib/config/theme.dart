import 'package:flutter/material.dart';
import 'package:didar_test/config/const.dart';
import 'package:didar_test/config/res/colors.dart';

abstract class AppTheme {
  AppTheme._();


  static const secondaryColor = 0xFFFFA200;



  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: kBg,
    iconTheme: const IconThemeData(
      color: kText
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 16, fontFamily: "IranSans", letterSpacing: 0.0,color: Color(0xFFc6c9ca)),
        bodyMedium: TextStyle(
          fontSize: 13, fontFamily: "IranSans", letterSpacing: 0.0,color: Color(0xFFc6c9ca)),
        titleSmall: TextStyle(
          color: ColorsApp.primary,
          letterSpacing: 0.0,
        ),
        titleMedium: TextStyle(
          letterSpacing: 0.0,
        )
    ),
    primaryColor: const Color(0xFFfaeb08),
    primaryColorDark: const Color(0xFFc6c9ca),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(const Color(0xFFfaeb08)),
      )
    ), colorScheme: const ColorScheme(brightness: Brightness.light,
        primary: Color(0xFF313a3e),
        onPrimary: kYellowNotificationStatus,
        secondary: kYellowNotificationStatus,
        onSecondary: Color(0xFFc6c9ca),
        error: Colors.red,
        onError: Colors.red,
        background: Color(0xFFffbd01),
        onBackground: Color(0xFFffbd01),
        surface: Color(0xff50C1E5),
        onSurface: Colors.black,
        // primaryVariant: Color(0xff0CBC52),
        primaryContainer: Color(0xff3097B4),
      secondaryContainer: Color(0xffC2C7CC),
      inversePrimary: Color(0xff313a3f)
    ).copyWith(background: kBg),
  );
}

