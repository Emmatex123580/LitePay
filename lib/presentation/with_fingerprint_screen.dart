import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import 'package:flutter/services.dart';

class WithFingerprintScreen extends StatefulWidget {
  const WithFingerprintScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<WithFingerprintScreen> createState() => _WithFingerprintScreenState();
}

class _WithFingerprintScreenState extends State<WithFingerprintScreen> {
  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildVectorNineteenSection(context),
              SizedBox(height: screenHeight * 0.1),
              Icon(
                Icons.fingerprint,
                size: 80
              ),
              SizedBox(height: screenHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Place your hand on the fingerprint scanner to",
                    style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500)
                  ),
                  Text(
                    "login",
                    style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500)
                  ),

                ],
              ),
              SizedBox(height: screenHeight * 0.08),
              Text(
              "Use password instead",
              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, color: Color(0XFF9B03D0),)
              ),
              SizedBox(height: screenHeight * 0.05),
              CustomElevatedButton(
                onPressed: () {                  
                  //TODO: Implement an action
                },
                text: "Sign In",
                margin: EdgeInsets.only(
                  left: 40.h,
                  right: 42.h,
                ),
              ),
          
              SizedBox(height: 20.v),
              
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


