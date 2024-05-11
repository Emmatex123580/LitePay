import 'package:flutter/material.dart';
import 'package:litepay/presentation/welcome_screen_three_screen.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_outlined_button.dart';

class WelcomeScreenTwoScreen extends StatelessWidget {
  const WelcomeScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.black54
          ),
          elevation: 0.0,
        ),
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 41.v),
          child: Column(
            children: [
              SizedBox(
                height: 538.v,
                width: 350.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 435.v,
                        width: 350.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFrame626984,
                              height: 262.adaptSize,
                              width: 262.adaptSize,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 16.h,
                                top: 52.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle127Onprimary,
                              height: 325.v,
                              width: 326.h,
                              radius: BorderRadius.circular(
                                6.h,
                              ),
                              alignment: Alignment.topLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgSmileyFriendsWith,
                              height: 322.adaptSize,
                              width: 322.adaptSize,
                              alignment: Alignment.topRight,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle128Primary,
                              height: 107.v,
                              width: 113.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 83.h,
                                bottom: 46.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle128Primary,
                              height: 107.v,
                              width: 113.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 103.h,
                                bottom: 55.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle128Primary,
                              height: 107.v,
                              width: 113.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 32.h,
                                bottom: 37.v,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle129Primary,
                              height: 243.v,
                              width: 171.h,
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildUserProfile(context),
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
                ],
              ),
              SizedBox(height: 51.v),
              _buildWelcomeScreenTwoButtons(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 11.h,
          right: 20.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "User Friendly",
              style: CustomTextStyles.headlineSmallOnPrimary,
            ),
            SizedBox(
              width: 319.h,
              child: Text(
                "Navigate effortlessly!\n Our user-friendly interface makes topping up your mobile credit a simple and enjoyable experience, even for first-time users.",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumOnPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeScreenTwoButtons(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            height: 30.v,
            width: 62.h,
            text: "Skip",
            buttonStyle: CustomButtonStyles.outlineOnPrimary,
          ),
          CustomElevatedButton(
            onPressed:() {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => WelcomeScreenThreeScreen())
              );
            },
            height: 30.v,
            width: 62.h,
            text: "Next",
            buttonStyle: CustomButtonStyles.fillOnPrimary,
            buttonTextStyle: CustomTextStyles.labelLargePrimary,
          ),
        ],
      ),
    );
  }
}
