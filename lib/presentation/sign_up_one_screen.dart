import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignUpOneScreen extends StatelessWidget {
  const SignUpOneScreen({Key? key})
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
              _buildVectorNineteenSection(context),
              SizedBox(height: 44.v),
              _buildSixtyOneSection(context),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: Text(
                    "Forgot password?",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                text: "Sign In",
                margin: EdgeInsets.only(
                  left: 39.h,
                  right: 43.h,
                ),
              ),
              SizedBox(height: 29.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMdiFingerprint,
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
              Spacer(),
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
  Widget _buildVectorNineteenSection(BuildContext context) {
    return SizedBox(
      height: 230.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector19,
            height: 112.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 80.h,
                right: 95.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse115,
                    height: 121.adaptSize,
                    width: 121.adaptSize,
                    radius: BorderRadius.circular(
                      60.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyOneSection(BuildContext context) {
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
                horizontal: 11.h,
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
                    imagePath: ImageConstant.imgEyesClosed,
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
