import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class SelectCableOneBottomsheet extends StatelessWidget {
  const SelectCableOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Select cable provider",
                      style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolRedA70024x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3.h),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.purple.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage13,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 81.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "GOTV",
                    style:
                        CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: _buildFrameRow(
              context,
              imageFourteen: ImageConstant.imgImage15,
              mTN: "STARTIMES",
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            child: _buildFrameRow(
              context,
              imageFourteen: ImageConstant.imgImage14,
              mTN: "DSTV",
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String imageFourteen,
    required String mTN,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.purple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: imageFourteen,
            height: 17.v,
            width: 40.h,
            margin: EdgeInsets.only(top: 11.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 75.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Text(
              mTN,
              style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold
                  .copyWith(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
