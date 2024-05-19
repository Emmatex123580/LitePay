import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:litepay/auth/fire_base_auth/firebase_auth_services.dart';
import 'package:litepay/core/main_page.dart';
import 'package:litepay/presentation/sign_in_three_screen.dart';
import 'package:litepay/presentation/sign_up_screen.dart';
import 'package:litepay/widgets/fadiing_progress_indicator.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';
import 'package:litepay/main.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector19,
              height: 112.v,
              width: 360.h,
            ),
            SizedBox(height: 70.v),
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
            
            TextButton(
              onPressed: () {
                 Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "New user? ",
                      style: CustomTextStyles.bodySmallff2f2f2f,
                    ),
            
                    TextSpan(
                      text: "Sign Up",
                      style: CustomTextStyles.bodySmallff9b03d0,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 70.v),
            Expanded(
              child: Container()
            ),
            CustomImageView(
              imagePath: ImageConstant.imgVector20,
              height: 155.v,
              width: 360.h,
            ),
          ],
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
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FirebaseAuthService _auth = FirebaseAuthService();
  static String state = "Forgot password";
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter email";
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return "Enter a valid email address";
                  }
                  return null;
      
                },
                decoration: InputDecoration(
                  hintText: 'email',
                  labelText: 'email',
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
              child: TextFormField(
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter passwoord";                  
                  }
                  return null;
                },
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
                SizedBox(height: 5.0),              
                TextButton(
                  child: Text("Forgot Password"),
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInThreeScreen()));
                  },
                ),
                SizedBox(height: 5.0)
              ],
            )
            :
            Container(),
            SizedBox(height: 10.0),
            CustomElevatedButton(
              onPressed: () async{
                if (_formkey.currentState!.validate()) {
                  fadingCircularProgressIndicator(context);
                  User? user;
                  try {
                    user = await _auth.signInWithEmailAndPassword(context, _emailController.text, _passwordController.text);
                    Navigator.pop(context); // Close the loading                 
                     if (user != null) {
                      bool _isEmailVerified;
                      _isEmailVerified = await FirebaseAuth.instance.currentUser!.emailVerified;
                      if (_isEmailVerified == true) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                          (route) => false,
                        );  
                      } else {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => MainPage()),
                          (route) => false,
                      );
                      } 
                     
                    } 
                  } catch (e) {
                    Navigator.pop(context); // Close the loading dialog
                    // Handle error, e.g., show a message
                  }
                }   
                 
              },                    
              text: "Sign In",
              margin: EdgeInsets.only(
                left: 40.h,
                right: 42.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}