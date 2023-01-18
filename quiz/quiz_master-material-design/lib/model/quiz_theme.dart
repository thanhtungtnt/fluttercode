import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// In a custom theme page we have described color and fonts
/// We may add more custom theme-features later
///

class QuizTheme {
  static const Color primaryColor = Color(0xFF409B25);
  static const Color scaffoldBackgroundColor = Color(0xFF2C6F2E);
  static const Color appBarBackgroundColor = Color(0xFF2C6F2E);
  static const Color boxDecorationColor = Color(0xFFC5DA28);
  static const Color elevatedButtonPrimaryColor = Color(0xFF3C9415);
  static const Color dividerColor = Color(0xFFD9DB26);
  static const correctAnswerColor = Color(0xFFFACAFA);
  static const questionTextColor = Color(0xFFF8E1F8);
  static const answerColor = Color(0xFFFFFFFF);

  static TextStyle answerStyle = GoogleFonts.langar(
    textStyle: const TextStyle(
      color: QuizTheme.answerColor,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle questionStyle = GoogleFonts.laila(
    textStyle: const TextStyle(
      color: QuizTheme.shrineBrown600,
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  );

  static TextStyle appbarStyle = GoogleFonts.salsa(
    textStyle: const TextStyle(
      color: QuizTheme.shrineBrown600,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );

  ThemeData _buildShrineTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      colorScheme: _shrineColorScheme,
      toggleableActiveColor: shrinePink400,
      primaryColor: shrinePink100,
      primaryColorLight: shrinePink100,
      scaffoldBackgroundColor: shrineBackgroundWhite,
      cardColor: shrineBackgroundWhite,
      textSelectionTheme:
          const TextSelectionThemeData(selectionColor: shrinePink100),
      errorColor: shrineErrorRed,
      buttonTheme: ButtonThemeData(
        colorScheme: _shrineColorScheme.copyWith(primary: shrinePink400),
        textTheme: ButtonTextTheme.normal,
      ),
      primaryIconTheme: _customIconTheme(base.iconTheme),
      textTheme: _buildShrineTextTheme(base.textTheme),
      primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
      iconTheme: _customIconTheme(base.iconTheme),
    );
  }

  ThemeData buildTheme() {
    return _buildShrineTheme();
  }

  IconThemeData _customIconTheme(IconThemeData original) {
    return original.copyWith(color: shrineBrown900);
  }

  TextTheme _buildShrineTextTheme(TextTheme base) {
    return base
        .copyWith(
          caption: base.caption!.copyWith(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            letterSpacing: defaultLetterSpacing,
          ),
          button: base.button!.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: defaultLetterSpacing,
          ),
        )
        .apply(
          fontFamily: 'Rubik',
          displayColor: shrineBrown900,
          bodyColor: shrineBrown900,
        );
  }

  static const ColorScheme _shrineColorScheme = ColorScheme(
    primary: shrinePink100,
    secondary: shrinePink50,
    surface: shrineSurfaceWhite,
    background: shrineBackgroundWhite,
    error: shrineErrorRed,
    onPrimary: shrineBrown900,
    onSecondary: shrineBrown900,
    onSurface: shrineBrown900,
    onBackground: shrineBrown900,
    onError: shrineSurfaceWhite,
    brightness: Brightness.light,
  );

  static const Color shrinePink50 = Color(0xFFFEEAE6);
  static const Color shrinePink100 = Color(0xFFFEDBD0);
  static const Color shrinePink300 = Color(0xFFFBB8AC);
  static const Color shrinePink400 = Color(0xFFEAA4A4);

  static const Color shrineBrown900 = Color(0xFF442B2D);
  static const Color shrineBrown600 = Color(0xFF7D4F52);

  static const Color shrineErrorRed = Color(0xFFC5032B);

  static const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
  static const Color shrineBackgroundWhite = Colors.white;

  static const defaultLetterSpacing = 0.03;
}
