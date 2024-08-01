// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';
import 'package:getx_mvvm/res/getx_localization/languages.dart';
import 'package:getx_mvvm/res/routes/routes.dart';
// import 'package:getx_mvvm/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Locale("en", "US"),
      fallbackLocale: Locale("en", "US"),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.lightBlueAccent,
          foregroundColor: AppColors.whiteColor,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      // home: SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
