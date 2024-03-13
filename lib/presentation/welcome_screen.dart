import 'package:flutter/material.dart';
import 'package:litepay/presentation/welcome_screen_two_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_outlined_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 54.v),
          child: Column(
            children: [
              SizedBox(height: 10.v),
              SizedBox(
                height: 515.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 415.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgUnsplashYmchvhbqzw,
                              height: 262.adaptSize,
                              width: 262.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 33.h,
                                top: 54.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle127,
                              height: 325.v,
                              width: 326.h,
                              radius: BorderRadius.circular(
                                6.h,
                              ),
                              alignment: Alignment.topCenter,
                              margin: EdgeInsets.only(top: 1.v),
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgUnsplashYmchvhbqzw327x346,
                              height: 327.v,
                              width: 346.h,
                              radius: BorderRadius.circular(
                                6.h,
                              ),
                              alignment: Alignment.topLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle128,
                              height: 107.v,
                              width: 113.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 66.h,
                                bottom: 52.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle129,
                              height: 218.v,
                              width: 183.h,
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 41.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Efficiency",
                              style: CustomTextStyles.headlineSmallPrimary,
                            ),
                            SizedBox(
                              width: 276.h,
                              child: Text(
                                "Recharge in a blink!\nEnsures your mobile credit is topped up within seconds\nMaking every transaction a breeze",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.bodyMedium14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 3.v,
                    width: 24.h,
                    decoration: BoxDecoration(
                      color: appTheme.black900,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 3.v,
                    width: 24.h,
                    margin: EdgeInsets.only(left: 10.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                  Container(
                    height: 3.v,
                    width: 24.h,
                    margin: EdgeInsets.only(left: 10.h),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(
                        1.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 51.v),
              _buildFrameRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            onPressed: () {
              // TODO: Add an action
            },
            height: 30.v,
            width: 62.h,
            text: "Skip",
            buttonStyle: CustomButtonStyles.outlinePrimary,
            buttonTextStyle: CustomTextStyles.labelLargePrimary,
          ),
          CustomElevatedButton(
            onPressed:() {
              Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => WelcomeScreenTwoScreen())
              );
            },
            height: 30.v,
            width: 62.h,
            text: "Next",
          ),
        ],
      ),
    );
  }
}
