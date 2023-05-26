import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:interview_exercise/core/common/vesti_colors.dart';


/// This app has just a theme which is light mode
/// How to use app colorScheme:
// /// If you are assigning a color property to a widget that has it's color value as a member of the colors in the app theme,
// /// you should assign the color as so => 'color: Theme.of(context).colorScheme.colorNameAccordingToTheme' e.g Theme.of(context).colorScheme.background

// /// How to use app theme:
// /// In your main.dart file, inside the MaterialApp() method, you should assign the theme parameter as so => 'theme: VestiThemeManager.lightTheme

// ///  How to use app textTheme:
// /// If you are assigning a textStyle property to a text widget that has it's style values as a member of the textStyles in the app theme,
/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.

class VestiThemeManager {
  VestiThemeManager._();

  static String get _fontFamily => 'Lato';
  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static final ColorScheme _lightColorScheme = const ColorScheme.light()
      .copyWith(
          primary: VestiColors.primary,
          secondary: VestiColors.secondary,
          error: VestiColors.primary.shade900,
          surface: VestiColors.secondaryTextColor,
          background: VestiColors.tertiaryTextColor,
          tertiary: VestiColors.tertiaryTextColor,
          onSurface: VestiColors.secondaryTextColor);

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
        scaffoldBackgroundColor: colorScheme.background,
        colorScheme: colorScheme,
        textTheme: _textTheme(colorScheme),

        fontFamily: _fontFamily,

        disabledColor: colorScheme.inverseSurface,
        brightness: colorScheme.brightness,
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: colorScheme.background,
        // ),
      );
  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: TextStyle(
          fontSize: 96.sp,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: TextStyle(
          fontSize: 72.sp,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: TextStyle(
          fontSize: 56.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          fontSize: 40.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: TextStyle(
          fontSize: 32.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontSize: 20.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
        bodySmall: TextStyle(
          fontSize: 12.sp,
          color: colorScheme.surface,
          fontWeight: FontWeight.w700,
        ),
      );
}
