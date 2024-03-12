import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

class WelcomeScreenThreeScreen extends StatelessWidget {
  const WelcomeScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 39.v),
          child: Column(
            children: [
              _buildImageStack(context),
              SizedBox(height: 19.v),
              Text(
                "Convenience",
                style: CustomTextStyles.headlineSmallPrimary,
              ),
              SizedBox(height: 1.v),
              Container(
                width: 288.h,
                margin: EdgeInsets.only(
                  left: 36.h,
                  right: 34.h,
                ),
                child: Text(
                  "All your VTU needs in one place!\n Our app is your go-to for convenient and hassle-free virtual top-ups. Manage your mobile credit with ease.",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
              SizedBox(height: 39.v),
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
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageStack(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 397.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 392.v,
                  width: 384.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrame626984Primary,
                        height: 262.adaptSize,
                        width: 262.adaptSize,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 52.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle127,
                        height: 325.v,
                        width: 326.h,
                        radius: BorderRadius.circular(
                          6.h,
                        ),
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(right: 18.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInterracialYoung,
                        height: 241.v,
                        width: 360.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 58.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 122.h,
                          bottom: 3.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 96.h,
                          bottom: 13.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 44.h,
                          bottom: 12.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 11.h,
                          bottom: 6.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 91.h,
                          bottom: 12.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 56.h,
                          bottom: 6.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 26.h,
                          bottom: 4.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle128,
                        height: 107.v,
                        width: 113.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 4.v),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle137,
                height: 117.v,
                width: 52.h,
                alignment: Alignment.bottomRight,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      height: 34.v,
      text: "Get Started",
      margin: EdgeInsets.only(
        left: 21.h,
        right: 20.h,
        bottom: 50.v,
      ),
    );
  }
}
