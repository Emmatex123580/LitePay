import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:litepay/auth/fire_base_auth/firebase_auth_services.dart';
import 'package:litepay/core/main_page.dart';
import 'package:litepay/presentation/sign_in_three_screen.dart';
import 'package:litepay/widgets/fadiing_progress_indicator.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';

class SignUpOneScreen extends StatefulWidget {
  const SignUpOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpOneScreen> createState() => _SignUpOneScreenState();
}

class _SignUpOneScreenState extends State<SignUpOneScreen> {
  final _formkey = GlobalKey<FormState>();
  FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  static String state = "Forgot password";
  bool _isPasswordVisible = false;
  String retrievedValue = '';
  User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
    retrieveData();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  // This function retrieves the username of the currenUser
  Future<void> retrieveData() async {
    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection("Users")
          .doc(currentUser!.uid)
          .get();

      setState(() {
        retrievedValue = documentSnapshot.get('username');
      });
    } catch (e) {
      setState(() {
        retrievedValue = '';
      });
    }
  }

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
              _loginForm(context),
              SizedBox(height: 20.v),
              TextButton(
                onPressed:() {
                  //TODO: implement action
                  _fingeprintBottomSheet(context);
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
                    imagePath: ImageConstant.imgLock,
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
                            text: (retrievedValue == '') ? "" : "$retrievedValue",
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

  Widget _loginForm(BuildContext context) {
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
                validator: (value){
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
                child: Text(
                  state,
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
            ),
            (state == "Incorrect password") ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10.h),              
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
              onPressed: () async{
                if (_formkey.currentState!.validate()) {
                  fadingCircularProgressIndicator(context);
                  User? user;
                  try {
                    user = await _auth.signInWithEmailAndPassword(context, _emailController.text, _passwordController.text);
                    Navigator.pop(context); // Close the loading dialog
                    if (user != null) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => MainPage()),
                        (route) => false,
                      );
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


  //This function calls the bottom sheet when trying to sign In with fingerprint
  void _fingeprintBottomSheet(BuildContext context) {
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
                size: 35.0.adaptSize,
                weight: 10.0,
              ),
              Text(
                "Login to scan fingerprint",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
                Container(
                height: 25.v,
                width: 100.h,
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
  }

}
