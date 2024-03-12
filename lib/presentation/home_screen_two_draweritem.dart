import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreenTwoDraweritem extends StatelessWidget {
  const HomeScreenTwoDraweritem({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 290.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 56.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse116,
              height: 57.adaptSize,
              width: 57.adaptSize,
              radius: BorderRadius.circular(
                28.h,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 18.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Nwadike Chinaza Abigail",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 66.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPricing,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "Pricing",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 22.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLetsIconsSettingLineLight,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "Settings",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 21.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgProfile,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "About Us",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 23.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolPrimary,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 48.h),
                  child: Text(
                    "Contact Us",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.v),
            Padding(
              padding: EdgeInsets.only(right: 29.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgClarityTalkBubblesLinePrimary,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Text(
                    "Lodge a Complaint",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(right: 49.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgStreamlineWeb,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 1.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: Text(
                      "Affilliate Website",
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.v),
            Padding(
              padding: EdgeInsets.only(right: 38.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgMaterialSymbolPrimary20x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  Text(
                    "Upgrade Package",
                    style: CustomTextStyles.bodyLargePrimary,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            Padding(
              padding: EdgeInsets.only(right: 60.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 6.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 48.h),
                    child: Text(
                      "Airtime Funding",
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 95.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolRedA700,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "Logout",
                    style: CustomTextStyles.bodyLargeRedA700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 46.v),
          ],
        ),
      ),
    );
  }
}
