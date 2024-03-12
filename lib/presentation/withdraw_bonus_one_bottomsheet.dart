import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class WithdrawBonusOneBottomsheet extends StatelessWidget {
  const WithdrawBonusOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  "Confirm Transaction",
                  style:
                      CustomTextStyles.titleMediumOnPrimaryContainerSemiBold18,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbolRedA70024x24,
                height: 28.adaptSize,
                width: 28.adaptSize,
              ),
            ],
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: 281.h,
                margin: EdgeInsets.only(right: 42.h),
                child: Text(
                  "You are about to transfer N500 fom your bonus to your main wallet.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                ),
              ),
            ),
          ),
          SizedBox(height: 25.v),
          CustomImageView(
            imagePath: ImageConstant.imgMaterialSymbolBlack900,
            height: 36.adaptSize,
            width: 36.adaptSize,
          ),
          SizedBox(height: 12.v),
          Text(
            "Use Fingerprint",
            style: CustomTextStyles.labelLargeOnPrimaryContainer,
          ),
          SizedBox(height: 7.v),
          Text(
            "OR",
            style: CustomTextStyles.labelMediumPrimary,
          ),
          SizedBox(height: 7.v),
          Text(
            "Use PIN Instead",
            style: CustomTextStyles.labelLargePrimaryContainer,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }
}
