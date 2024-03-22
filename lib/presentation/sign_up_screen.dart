import 'package:flutter/material.dart';
import 'package:litepay/presentation/sign_up_one_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

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
  String fullName = "";
  String username = "";
  String email = "";
  String address = "";
  String password = "";
  late int telephone;
   bool _isPasswordVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formkey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildEight(context),
                SizedBox(height: 10.v),
                SizedBox(
                  height: 632.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgVector20,
                        height: 155.v,
                        width: 360.h,
                        alignment: Alignment.bottomCenter,
                      ),
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
                              
                             SizedBox(height: 8.0),
                                _buildUserName(),
                                const SizedBox(height: 8.0),
                                _buildEmail(),
                                const SizedBox(height: 8.0),
                                _buildTelephone(),
                                const SizedBox(height: 8.0),
                                _buildAddress(),
                                const SizedBox(height: 8.0),
                                _buildPassword(),
                                const SizedBox(height:8.0),

                                CustomElevatedButton(
                                  text: "Get Started",
                                  margin: EdgeInsets.symmetric(horizontal: 21.h),
                                  onPressed: () {
                                    final isValid = _formkey.currentState!.validate();
                                    if(isValid) {
                                      _formkey.currentState!.save();
                                        showModalBottomSheet(
                                          context: context,
                                          isDismissible: false,
                                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                                          builder: (BuildContext context) {
                                            return Container(
                                              height: 250,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                               
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.check,
                                                    size: 100,
                                                    color: Color.fromARGB(255, 37, 229, 44),
                                                    ),
                                                  Text(
                                                    "Success",
                                                    style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
                                                    ),
                                                  Center(
                                                    child: RichText(
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: "    Your registration was\n",
                                                            style: TextStyle(fontSize: 18, color: Colors.black)
                                                          ),
                                                                                                  
                                                          TextSpan(
                                                            text: "successfull, please login now",
                                                            style: TextStyle(fontSize: 18, color: Colors.black)
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 20,
                                                    width: 100,
                                                    child: ElevatedButton(
                                                      child: Text(
                                                        "Ok",
                                                        style: TextStyle(fontWeight: FontWeight.bold)
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) => SignUpOneScreen()));
                                                      },
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor:  Color.fromARGB(255, 29, 243, 36), // Background color of the button
                                                        foregroundColor: Colors.white, // Text color
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8.0), // Button border radius
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
                                  },
                                ),
                                   
                              SizedBox(height: 45.v),
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
              ],
            ),
          ),
        ),
      ),
    );
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
        ],
      ),
    );
  }


  Widget _buildName() => TextFormField(
    decoration: InputDecoration(
      labelText: "Full Name",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    onSaved: (value) => setState(() => fullName = value!),
  );

   Widget _buildUserName() => TextFormField(
    decoration: InputDecoration(
      labelText: "User Name",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.name,
    onSaved: (value) => setState(() => fullName = value!),
   );

   Widget _buildEmail() => TextFormField(
    decoration: InputDecoration(
      labelText: "Email",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.emailAddress,
    onSaved: (value) => setState(() => email = value!),
   );

   Widget _buildAddress() => TextFormField(
    decoration: InputDecoration(
      labelText: "Home Address",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.streetAddress,
    onSaved: (value) => setState(() => address = value!),
   );

   Widget _buildTelephone() => TextFormField(
    decoration: InputDecoration(
      labelText: "Phone No.",
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    onSaved: (value) => setState(() => fullName = value!),
    validator: (value) {
      if(value!.length != 11) {
        return "Incorrect phone No";
      }
      else{
        return null;
      }
    }
   );

   Widget _buildPassword() => TextFormField(
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
    onChanged: (value) => setState(() => password = value),
   );
}
