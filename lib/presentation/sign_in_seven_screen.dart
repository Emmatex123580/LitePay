import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';



class SignInSevenScreen extends StatefulWidget {
  const SignInSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInSevenScreen> createState() => _SignInSevenScreenState();
}

class _SignInSevenScreenState extends State<SignInSevenScreen> {
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
              SizedBox(height: 41.v),
              SizedBox(
                width: 233.h,
                child: Text(
                  "Please enter the 6 digit code sent to abigailnwadike@gmail.com",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 21.h,
                ),
                child: pinCodeTextFieldWidget
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 19.h),
                  child: Text(
                    "You’ve entered an iccorrect code",
                    style: CustomTextStyles.bodySmallRed300,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
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

  //Code display
  Widget get pinCodeTextFieldWidget => PinCodeTextField(
      appContext: context,
      //controller: _codeController,
      length: 6,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      pinTheme: PinTheme(
        fieldHeight: 39.h,
        fieldWidth: 39.h,
        shape: PinCodeFieldShape.box,
        inactiveColor: appTheme.purpleA100,
        activeColor: appTheme.purpleA100,
      ),
      onCompleted: (value) {
        
      },
    );
}
