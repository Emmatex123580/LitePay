import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignInEightScreen extends StatelessWidget {
  const SignInEightScreen({Key? key})
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
              _buildFrameRow(context),
              SizedBox(height: 46.v),
              SizedBox(
                width: 228.h,
                child: Text(
                  "Your new password must be different from your old password",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
              SizedBox(height: 62.v),
              _buildFrameStack(context),
              SizedBox(height: 98.v),
              CustomElevatedButton(
                text: "Save",
                margin: EdgeInsets.only(
                  left: 47.h,
                  right: 35.h,
                ),
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
  Widget _buildFrameRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgVector19,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBackArrow,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(bottom: 59.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 81.h,
              bottom: 58.v,
            ),
            child: Text(
              "Forgot Password",
              style: CustomTextStyles.titleSmallOnPrimaryBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameStack(BuildContext context) {
    return SizedBox(
      height: 100.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                            horizontal: 10.h,
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
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 1.v,
                          ),
                          child: Text(
                            "New password",
                            style: CustomTextStyles.bodySmall12,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.v),
                CustomImageView(
                  imagePath: ImageConstant.imgEyesClosed,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 11.h),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
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
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(1),
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
                        "Confirm password",
                        style: CustomTextStyles.bodySmall12,
                      ),
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
}
