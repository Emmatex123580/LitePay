import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class WithdrawBonusFourBottomsheet extends StatelessWidget {
  const WithdrawBonusFourBottomsheet({Key? key})
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildConfirmTransactionRow(context),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Opacity(
              opacity: 0.7,
              child: Container(
                width: 287.h,
                margin: EdgeInsets.only(right: 36.h),
                child: Text(
                  "You are about to transfer N500 from your bonus to your main wallet",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumOnPrimaryContainer,
                ),
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Text(
            "Enter PIN to confirm",
            style: CustomTextStyles.titleSmallSemiBold,
          ),
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 31.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.purple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "*",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
              Container(
                width: 31.h,
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.purple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "*",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
              Container(
                width: 31.h,
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.purple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "*",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
              Container(
                width: 31.h,
                margin: EdgeInsets.only(left: 20.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.purple.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Text(
                  "*",
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ),
            ],
          ),
          SizedBox(height: 37.v),
          Padding(
            padding: EdgeInsets.only(
              left: 47.h,
              right: 29.h,
            ),
            child: _buildFrameRow(
              context,
              textValue1: "1",
              textValue2: "2",
              textValue3: "3",
              textValue4: "4",
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 47.h,
              right: 29.h,
            ),
            child: _buildFrameRow(
              context,
              textValue1: "5",
              textValue2: "6",
              textValue3: "7",
              textValue4: "8",
            ),
          ),
          SizedBox(height: 12.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 119.h,
                right: 41.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Text(
                      "9",
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 11.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.fillPurple.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Text(
                      "0",
                      style: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaterialSymbolRedA70032x32,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      top: 5.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 31.v),
          Text(
            "OR",
            style: CustomTextStyles.labelLargeOnPrimaryContainer_1,
          ),
          SizedBox(height: 1.v),
          Text(
            "Use Fingerprint",
            style: CustomTextStyles.labelLargePurpleA200,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmTransactionRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            "Confirm Transaction",
            style: CustomTextStyles.titleMediumOnPrimaryContainerSemiBold18,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMaterialSymbolRedA70024x24,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String textValue1,
    required String textValue2,
    required String textValue3,
    required String textValue4,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            textValue1,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Spacer(
          flex: 33,
        ),
        Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            textValue2,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Spacer(
          flex: 33,
        ),
        Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            textValue3,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Spacer(
          flex: 33,
        ),
        Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(
            horizontal: 11.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillPurple.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Text(
            textValue4,
            style: CustomTextStyles.titleSmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
