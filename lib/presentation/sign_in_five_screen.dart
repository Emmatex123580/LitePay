import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_pin_code_text_field.dart';

class SignInFiveScreen extends StatelessWidget {
  const SignInFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSignInFrame(context),
              SizedBox(height: 46.v),
              SizedBox(
                width: 250.h,
                child: Text(
                  "Please enter the 6 digit code sent to abigailnwadike@gmail.com",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 21.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 11.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 19.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Didn’t receive any code? ",
                          style: CustomTextStyles.bodySmallff2f2f2f,
                        ),
                        TextSpan(
                          text: "Resend",
                          style: CustomTextStyles.bodySmallff9b03d0,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "Verify",
                margin: EdgeInsets.symmetric(horizontal: 41.h),
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
  Widget _buildSignInFrame(BuildContext context) {
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
}
