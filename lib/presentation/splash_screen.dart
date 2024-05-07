import 'package:flutter/material.dart';
import 'package:litepay/presentation/welcome_screen.dart';
import '../core/app_export.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();

    // Redirect to another screen after 3 seconds
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUnsplashT9X7ypci,
                height: 104.v,
                width: 93.h,
              ),
              SizedBox(height: 5.v),
              Text(
                "Lite Pay",
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
