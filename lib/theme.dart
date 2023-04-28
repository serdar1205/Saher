import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


abstract class AppColors{
  static const background = Color.fromRGBO(230, 230, 230, 1);
  static const background2 = Colors.white;
  static const card = AppColors.cardLight;
  static const secondary = Color.fromRGBO(230, 230, 230, 1);
  static const accent = Colors.white;
  static const textColor = Color.fromRGBO(37, 37, 37, 1);
  static const textFaded = Color(0xFF9899A5);
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
  static const textHighlight = secondary;
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF303334);
  static const appBarColor = Color.fromRGBO(230, 230, 230, 1);
  static const appBarBg = Color.fromRGBO(250, 250, 250, 1);
  static const selected = Color(0xFFF8B449);
  static const buttonColor = Color(0xFF30BE76);
  static const buttonColor2 = Color(0xFF489E67);
  static const priceColor = Color.fromRGBO(248, 180, 73, 1);
  static const categoryBorderColor1 = Color.fromRGBO(151, 203, 243, 1.0);
  static const categoryCardColor1 = Color.fromRGBO(194, 223, 247, 1.0);
  static const categoryBorderColor2 = Color.fromRGBO(255, 166, 186, 1.0);
  static const categoryCardColor2 = Color.fromRGBO(249, 221, 221, 1.0);
  static const categoryBorderColor3 = Color.fromRGBO(126, 238, 174, 1.0);
  static const categoryCardColor3 = Color.fromRGBO(166, 255, 205, 1.0);
}





abstract class AppTheme{
  static const accentColor = AppColors.accent;
  static final visualDensity = VisualDensity.adaptivePlatformDensity;

  ///Light theme
  static ThemeData light() => ThemeData(

    brightness: Brightness.light,
    accentColor: accentColor,
    visualDensity: visualDensity,
    appBarTheme: AppBarTheme(
        titleTextStyle: TextStyle(color: AppColors.textColor),
      backgroundColor:  AppColors.appBarBg,
      iconTheme: IconThemeData(color: Colors.black26)
    ),
    textTheme: GoogleFonts.mulishTextTheme().apply(
      bodyColor: AppColors.textColor
    ),
    backgroundColor: AppColors.background,
    scaffoldBackgroundColor: AppColors.background,
    cardColor: AppColors.card,
    primaryTextTheme: TextTheme(
      headline6: TextStyle(color: AppColors.textColor)
    ),
    buttonTheme: ButtonThemeData(
      buttonColor:  AppColors.buttonColor,
    ),
    iconTheme: IconThemeData(color: Colors.black26)
  );


}