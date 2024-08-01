import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/components/internet_exceptions_widget.dart';
import 'package:getx_mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("splash_appbar_name".tr),
        centerTitle: true,
      ),
      body: InternetExceptions(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessageCenter("This is testing!");
          // Utils.snackBar("Test", "This is testing!");
        },
      ),
    );
  }
}
