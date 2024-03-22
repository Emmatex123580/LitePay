import 'package:flutter/material.dart';
import 'package:litepay/presentation/sign_in_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignInEightScreen extends StatefulWidget {
  const SignInEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignInEightScreen> createState() => _SignInEightScreenState();
}

class _SignInEightScreenState extends State<SignInEightScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String state = "";
  bool _isPasswordVisible = false;                       

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFrameRow(context),
              SizedBox(height: 40.v),
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
              SizedBox(height: 54.v),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller1,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: ' new Password',
                    labelText: ' new Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _controller2,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'confirm Password',
                    labelText: 'confirm Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.h),
                  child: (state == "")? Text(
                    "",
                    style: CustomTextStyles.bodySmall12,
                  )
                  :
                  Text(
                    state,
                    style: TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ),
              ),

              SizedBox(height: 54.v),
              CustomElevatedButton(
                text: "Save",
                margin: EdgeInsets.only(
                  left: 47.h,
                  right: 35.h,
                ),
                onPressed: () {
                  setState(() {
                    if (_controller1.text == _controller2.text) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignInScreen()));
                    }
                    state = "Password mismatched";
                    
                  });
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
}
