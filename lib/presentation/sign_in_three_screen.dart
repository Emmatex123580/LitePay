import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignInThreeScreen extends StatelessWidget {
  const SignInThreeScreen({Key? key})
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
              _buildFrame(context),
              Spacer(
                flex: 39,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 282.h,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    right: 56.h,
                  ),
                  child: Text(
                    "Enter your email to get a password reset code",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyMedium14,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              _buildSixtyOne(context),
              SizedBox(height: 54.v),
              CustomElevatedButton(
                text: "Send",
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 40.h,
                ),
              ),
              Spacer(
                flex: 60,
              ),
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
  Widget _buildFrame(BuildContext context) {
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
                "Email",
                style: CustomTextStyles.bodySmall12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
