import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:litepay/presentation/sign_in_screen.dart';
import 'package:litepay/widgets/fadiing_progress_indicator.dart';
import 'package:litepay/widgets/signup_success_bottomsheet.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import "../auth/fire_base_auth/firebase_auth_services.dart";

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formkey = GlobalKey<FormState>();


   bool _SigningUp = false;
  final FirebaseAuthService _auth = FirebaseAuthService(); //assigning the FirebaseAuthService
  TextEditingController _fullnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  bool _isPasswordVisible = true;
   
  @override
  void dispose() {
     _usernameController.dispose(); 
    _fullnameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              _buildEight(context),
              SizedBox(height: 10.v),
              SizedBox(
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Sign Up",
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            SizedBox(height: 28.v),
                            _buildName(),
                            SizedBox(height: 8.v),
                            _buildUserName(),
                            SizedBox(height: 8.v),
                            _buildEmail(),
                            SizedBox(height: 8.v),
                            _buildTelephone(),
                            SizedBox(height: 8.v),
                            _buildAddress(),
                            SizedBox(height: 8.v),
                            _buildPassword(),
                            SizedBox(height: 16.v),
                            CustomElevatedButton(
                              text: "Get Started",
                              margin: EdgeInsets.symmetric(horizontal: 21.h),
                              onPressed: () async {
                                final isValid = _formkey.currentState!.validate();    
                                if (isValid)  {
                                  fadingCircularProgressIndicator(context);
                                  try{
                                    bool _isSignedUp;
                                    _isSignedUp = await _auth.signUp(context, _emailController.text, _passwordController.text, _addressController.text,
                                   _fullnameController.text, _phoneNumberController.text, _usernameController.text);
                                   if (_isSignedUp == true) {
                                     Navigator.pop(context);
                                     signUpSuccess(context);
                                   }
                                  } catch(e) {
                                    Navigator.pop(context);
                                  }
                                  
                                }
                              },
                            ),
                            SizedBox(height: 35.v),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Already have an account? ",
                                    style: CustomTextStyles.bodySmallff2f2f2f,
                                  ),
                                  TextSpan(
                                    text: "Sign In",
                                    style: CustomTextStyles.bodySmallff9b03d0,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) => SignInScreen())
                                            )
                                          )
                                                  ;
                                      }
                                    ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),  
              _bottomImage(context)
              
              /**
              CustomImageView(
                imagePath: ImageConstant.imgVector20,
                height: 155.v,
                width: 360.h,
              ),
              */
            ],
          ),
        ),
      ),
    ));
  }

 

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
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
      child: Column(
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
        ]
        )
    );
  }

  Widget _bottomImage(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgVector20,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //Full Name form field
  Widget _buildName() => TextFormField(
    controller: _fullnameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter full name";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Full Name",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
  );

  // User Name form field
  Widget _buildUserName() => TextFormField(
    controller: _usernameController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter user name";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "User Name",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
  );

  // Email form field
  Widget _buildEmail() => TextFormField(
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
        labelText: "Email",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.emailAddress,
    );

  //Home Address Form field
  Widget _buildAddress() => TextFormField(
    controller: _addressController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter Address";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Home Address",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.streetAddress,
  );

  // Phone No. form field
  Widget _buildTelephone() => TextFormField(
    controller: _phoneNumberController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter Phone No.";
      } else if (value.length != 11) {
        return "Enter 11 digits";
      }
      return null;
    },
    inputFormatters: <TextInputFormatter>[
      FilteringTextInputFormatter.digitsOnly,
    ],
    decoration: InputDecoration(
      labelText: "Phone No.",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
  );

  //Password form field
  Widget _buildPassword() => TextFormField(
    controller: _passwordController,
    validator: (value) {
      if (value!.isEmpty) {
        return "Enter Password";
      }
      else if (value.length < 6) {
        return "Password is less than 6 characters";
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Password",
      border: OutlineInputBorder(),
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
    obscureText: _isPasswordVisible,
  );
}
