import 'package:flutter/material.dart';
import 'package:litepay/presentation/sign_in_eight_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class SignInSixScreen extends StatefulWidget {
  const SignInSixScreen({Key? key})
      : super(
          key: key,
        );
  @override
  State<SignInSixScreen> createState() => _SignInSixScreenState();
}

class _SignInSixScreenState extends State<SignInSixScreen> {
  String Code = "123456";
  String code ='123456';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildSignInSixFrame(context),
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
                child: pinCodeTextFieldWidget
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: (Code == code)? Text(
                    "00:60",
                    style: CustomTextStyles.bodySmall12,
                  )
                  :
                  Text(
                    "You have entered an incorrect code",
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                text: "Verify",
                margin: EdgeInsets.symmetric(horizontal: 41.h),
                onPressed: () {
                   Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInEightScreen())); //Navigates on default 
                },
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
  Widget _buildSignInSixFrame(BuildContext context) {
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
            color: Colors.black54,
            onTap: () {
              Navigator.pop(context);
            },
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
      autoFocus: true,
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
        //Implement an action
       setState(() {
         code = value.replaceAll(" ", "");
       });
      },
    );
}
