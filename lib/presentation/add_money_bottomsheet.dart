import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AddMoneyBottomsheet extends StatelessWidget {
  const AddMoneyBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Select Payment method",
                style: CustomTextStyles.titleMediumOnPrimaryContainer,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbolRedA70024x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
            ],
          ),
          SizedBox(height: 24.v),
          _buildFundWalletATMMonnify(context),
          SizedBox(height: 16.v),
          _buildFundWalletATMPaystack(context),
          SizedBox(height: 16.v),
          _buildFundWalletManualBank(context),
          SizedBox(height: 16.v),
          _buildFundWalletAutomatedBank(context),
          SizedBox(height: 16.v),
          _buildAirtimeFunding(context),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFundWalletATMMonnify(BuildContext context) {
    return CustomOutlinedButton(
      height: 41.v,
      text: "Fund wallet ATM Monnify",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildFundWalletATMPaystack(BuildContext context) {
    return CustomOutlinedButton(
      height: 41.v,
      text: "Fund wallet ATM Paystack",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildFundWalletManualBank(BuildContext context) {
    return CustomOutlinedButton(
      height: 41.v,
      text: "Fund wallet Manual bank",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildFundWalletAutomatedBank(BuildContext context) {
    return CustomOutlinedButton(
      height: 41.v,
      text: "Fund wallet Automated bank",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  Widget _buildAirtimeFunding(BuildContext context) {
    return CustomOutlinedButton(
      height: 41.v,
      text: "Airtime Funding",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
