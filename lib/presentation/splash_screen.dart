import 'package:flutter/material.dart';
import '../core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

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
