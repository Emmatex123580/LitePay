import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DataBottomsheet extends StatelessWidget {
  const DataBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildMtnButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "MTN",
      buttonStyle: CustomButtonStyles.fillAmber,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildAirtelButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "Airtel",
      buttonStyle: CustomButtonStyles.fillErrorContainer,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildNineMobileButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "9Mobile",
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.titleMediumLimeA700,
    );
  }

  /// Section Widget
  Widget _buildGloButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.v,
      text: "Glo",
      buttonStyle: CustomButtonStyles.fillGreen,
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 55.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 11.v),
            _buildMtnButton(context),
            SizedBox(height: 20.v),
            _buildAirtelButton(context),
            SizedBox(height: 20.v),
            _buildNineMobileButton(context),
            SizedBox(height: 20.v),
            _buildGloButton(context),
          ],
        ),
      ),
    );
  }
}
