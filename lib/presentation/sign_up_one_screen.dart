import 'package:flutter/material.dart';
import 'package:litepay/main.dart';
import 'package:litepay/presentation/sign_in_three_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';

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
              LoginForm(),
              SizedBox(height: 20.v),
              TextButton(
                onPressed:() {
                  //TODO: implement action
                  showModalBottomSheet(
                    context: context,
                    isDismissible: false,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (BuildContext context) {
                      return Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Authentication Required",
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)
                            ),
                            Text("Verify  Identtity"),
                            Icon(
                              Icons.fingerprint,
                              size: 35.0,
                              weight: 10.0,
                            ),
                            Text(
                              "Login to scan fingerprint",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                            ),
                             Container(
                              height: 25,
                              width: 100,
                              child: ElevatedButton(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(fontWeight: FontWeight.bold)
                                ),
                                onPressed: () => Navigator.pop(context),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:  Color.fromARGB(255, 185, 18, 6), // Background color of the button
                                  foregroundColor: Colors.white, // Text color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0) // Button border radius
                                  )
                                ),
                            
                              ),
                            )
                          ]
                        ),
                      );
                    }
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Icon(
                    Icons.fingerprint,
                    size: 35,
                    color: Colors.black,
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
 
}


class LoginForm extends StatefulWidget {
@override
_LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  static String username = "ace";
  static String password = "ace";
  static String state = "Forgot password";
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: 'Username',
                labelText: 'Username',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                hintStyle: TextStyle(color: Colors.black),
              ),
               inputFormatters: [
                FilteringTextInputFormatter.deny(RegExp(r'\s')), // Deny spaces
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
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
                  padding: EdgeInsets.only(right: 21.h),
                  child: TextButton(
                    child: Text(
                      state,
                      style: CustomTextStyles.bodySmall12,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInThreeScreen()));
                    },
                  ),
                ),
              ),
          (state == "Incorrect password") ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10.0),              
              TextButton(
                child: Text("Forgot Password"),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInThreeScreen()));
                },
              ),
              SizedBox(height: 10.0)
            ],
          )
          :
          Container(),
          SizedBox(height: 16.0),
          CustomElevatedButton(
            onPressed: () {                  
              setState(() {
                    if(_usernameController.text == username && _passwordController.text == password) {
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
                    state = "Forgot password";
                }
                  state = "Incorrect password";
                });
            },
            text: "Sign In",
            margin: EdgeInsets.only(
              left: 40.h,
              right: 42.h,
            ),
          ),
        ],
      ),
    );
  }
}