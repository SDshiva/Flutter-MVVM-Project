// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/res/colors/app_colors.dart';

class InternetExceptions extends StatefulWidget {
  const InternetExceptions({super.key});

  @override
  State<InternetExceptions> createState() => _InternetExceptionsState();
}

class _InternetExceptionsState extends State<InternetExceptions> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.cloud_off,
                color: AppColors.redColor,
                size: 50,
              ),
              SizedBox(
                height: height * .1,
              ),
              Text(
                "internet_exception".tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: height * .1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
