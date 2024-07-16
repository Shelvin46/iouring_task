import 'package:flutter/material.dart';
import 'package:iouring_task/core/constants/color_constants.dart';
import 'package:iouring_task/core/constants/text_style_constants.dart';
import 'package:iouring_task/features/base_screen/presentation/screens/base_screen.dart';

///[MyApp] is the entry point of the app.
///[MyApp] is a stateless widget which returns a [MaterialApp] widget.
///[MyApp] contains the theme configuration of the app.
///[MyApp] contains the [lightColorScheme] and [darkColorScheme] for the app.
///[MyApp] contains the [buttonThemeData] for the app.
///[MyApp] contains the [textTheme] for the app.
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: ColorConstants.primaryTealColor,
    onPrimary: ColorConstants.black,
    secondary: ColorConstants.black,
    onSecondary: ColorConstants.white,
    error: ColorConstants.red,
    onError: ColorConstants.red,
    surface: ColorConstants.black,
    onSurface: ColorConstants.black,
  );

  ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: ColorConstants.primaryTealColor,
    onPrimary: ColorConstants.white,
    secondary: ColorConstants.white,
    onSecondary: ColorConstants.black,
    error: ColorConstants.red,
    onError: ColorConstants.red,
    surface: ColorConstants.white,
    onSurface: ColorConstants.white,
  );

  ButtonThemeData buttonThemeData = const ButtonThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorConstants.white,
      onPrimary: ColorConstants.white,
      secondary: ColorConstants.white,
      onSecondary: ColorConstants.white,
      error: ColorConstants.white,
      onError: ColorConstants.white,
      surface: ColorConstants.white,
      onSurface: ColorConstants.white,
    ),
  );

  TextTheme textTheme = TextTheme(
    displayLarge: TextStyleConstants.displayLargeTextStyle,
    displayMedium: TextStyleConstants.displayMediumTextStyle,
    labelSmall: TextStyleConstants.labelSmallTextStyle,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Iouring',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.white,
        fontFamily: TextStyleConstants.fontFamily,
        useMaterial3: true,
        colorScheme: lightColorScheme,
        buttonTheme: buttonThemeData,
        textTheme: textTheme,
      ),
      darkTheme: ThemeData(
        fontFamily: TextStyleConstants.fontFamily,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        useMaterial3: true,
        colorScheme: darkColorScheme,
        buttonTheme: buttonThemeData,
        textTheme: textTheme,
      ),
      themeMode: ThemeMode.dark,
      // themeMode: MediaQuery.platformBrightnessOf(context) == Brightness.dark
      //     ? ThemeMode.dark
      //     : ThemeMode.light,
      home: const BaseScreen(),
    );
  }
}
