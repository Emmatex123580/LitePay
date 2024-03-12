import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
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
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector19,
                height: 112.v,
                width: 360.h,
              ),
              SizedBox(height: 81.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "Sign In",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildSixtyOne(context),
              SizedBox(height: 19.v),
              _buildSixtyTwo(context),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Text(
                    "Forgot password?",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              CustomElevatedButton(
                text: "Get Started",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 42.h,
                ),
              ),
              SizedBox(height: 45.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "New user? ",
                      style: CustomTextStyles.bodySmallff2f2f2f,
                    ),
                                        // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondRoute()),
                      );
                    }
                    TextSpan(
                      text: "Sign Up",
                      style: CustomTextStyles.bodySmallff9b03d0,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 98.v),
              CustomImageView(
                imagePath: ImageConstant.imgVector20,
                height: 155.v,
                width: 360.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return SizedBox(
      height: 42.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 33.v,
              width: 320.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
                border: Border.all(
                  color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  width: 1.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 19.v,
              width: 69.h,
              margin: EdgeInsets.only(left: 13.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Username",
                style: CustomTextStyles.bodySmall12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyTwo(BuildContext context) {
    return SizedBox(
      height: 42.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPhEyeThin,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 19.v,
              width: 69.h,
              margin: EdgeInsets.only(left: 13.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Password",
                style: CustomTextStyles.bodySmall12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
