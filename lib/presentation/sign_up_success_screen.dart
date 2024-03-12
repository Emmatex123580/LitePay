import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 756.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector19,
                height: 112.v,
                width: 360.h,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector20,
                height: 155.v,
                width: 360.h,
                alignment: Alignment.bottomCenter,
              ),
              _buildSignInScreen(context),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 87.h,
                    top: 66.v,
                    right: 87.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                      ),
                      SizedBox(height: 21.v),
                      SizedBox(
                        width: 185.h,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Welcome back\n",
                                style: CustomTextStyles.titleLargeff9b03d0,
                              ),
                              TextSpan(
                                text: "Nwadike Chinaza Abigail",
                                style: CustomTextStyles.bodyMediumff9b03d0,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Opacity(
                opacity: 0.7,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 756.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(0.6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInScreen(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 42.v,
              width: 320.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 11.h,
                        vertical: 7.v,
                      ),
                      decoration:
                          AppDecoration.outlineOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 1.v),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgPhEyeThinOnprimarycontainer,
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
            ),
            SizedBox(height: 9.v),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot password?",
                style: CustomTextStyles.bodySmall12,
              ),
            ),
            SizedBox(height: 27.v),
            CustomElevatedButton(
              text: "Sign In",
              margin: EdgeInsets.only(
                left: 19.h,
                right: 23.h,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 29.v),
            Padding(
              padding: EdgeInsets.only(left: 89.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath:
                        ImageConstant.imgMdiFingerprintOnprimarycontainer,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 8.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "Fingerprint",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
