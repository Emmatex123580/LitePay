import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
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
              CustomImageView(
                imagePath: ImageConstant.imgVector19,
                height: 112.v,
                width: 360.h,
              ),
              SizedBox(height: 81.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "Sign In",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              LoginForm(),
              SizedBox(height: 9.v),
              
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "New user? ",
                      style: CustomTextStyles.bodySmallff2f2f2f,
                    ),

                    // TODO: look at this commented block of code
                    /**                                  // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondRoute()),
                      );
                    }
                    */

                    TextSpan(
                      text: "Sign Up",
                      style: CustomTextStyles.bodySmallff9b03d0,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 98.v),
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
}
  
// Loginform widget
class LoginForm extends StatefulWidget {
@override
_LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
          TextField(
            controller: _usernameController,
            decoration: InputDecoration(
              hintText: 'Username',
              labelText: 'Username',
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              hintStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: _passwordController,
            obscureText: !_isPasswordVisible,
            
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
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
          Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Text(
                    "Forgot password?",
                    style: CustomTextStyles.bodySmall12,
                  ),
                ),
              ),
          SizedBox(height: 16.0),
          CustomElevatedButton(
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