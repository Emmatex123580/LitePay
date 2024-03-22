import 'package:flutter/material.dart';
import 'package:litepay/presentation/sign_in_five_screen.dart';
import 'package:litepay/presentation/sign_in_six_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

 
class SignInThreeScreen extends StatefulWidget {
  const SignInThreeScreen({Key? key})
      : super(
          key: key,
        );
  @override
  State<SignInThreeScreen> createState() => _SignInThreeScreenState();
}

class _SignInThreeScreenState extends State<SignInThreeScreen> {
  TextEditingController _emailController = TextEditingController();
   static const String email = "ace@gmail.com"; //Default email for testing
   String state = "";
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                  hintStyle: TextStyle(color: Colors.black),
                  ),  
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: (state == "You have entered an Incorrect email") ?
                  Text(
                    "You have entered an Incorrect email",
                    style: TextStyle(color: Colors.red, fontSize: 14)
                    )
                  :
                  Text(""),
                )
              ),
              SizedBox(height: 54.v),
              
              CustomElevatedButton(
                text: "Send",
                margin: EdgeInsets.only(
                  left: 42.h,
                  right: 40.h,
                ),
                onPressed: () {
                  setState(() {
                    if(_emailController.text == email) {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInFiveScreen()));
                    }
                    state = "You have entered an Incorrect email";
                  });
                }              
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