import 'user1_item_widget.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class SignUpThreeScreen extends StatelessWidget {
  const SignUpThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 756.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildTwentyEight(context),
              CustomImageView(
                imagePath: ImageConstant.imgVector20,
                height: 155.v,
                width: 360.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
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
                      SizedBox(height: 17.v),
                      _buildUser(context),
                      SizedBox(height: 11.v),
                      _buildSixtyFive(context),
                      SizedBox(height: 28.v),
                      CustomElevatedButton(
                        text: "Get Started",
                        margin: EdgeInsets.symmetric(horizontal: 21.h),
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
              Opacity(
                opacity: 0.4,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 756.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEight(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
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
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60.v),
            CustomImageView(
              imagePath: ImageConstant.imgBackArrow,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 11.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return User1ItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildSixtyFive(BuildContext context) {
    return SizedBox(
      height: 42.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 10.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgEyesClosed,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 19.v,
              width: 69.h,
              margin: EdgeInsets.only(left: 13.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Text(
                "Password",
                style: CustomTextStyles.bodySmall12,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 18.v,
              width: 26.h,
              margin: EdgeInsets.only(left: 80.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
