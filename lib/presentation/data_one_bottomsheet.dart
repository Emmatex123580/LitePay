import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class DataOneBottomsheet extends StatelessWidget {
  const DataOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 9.v),
          CustomOutlinedButton(
            height: 44.v,
            text: "SME",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
            height: 44.v,
            text: "Corporate",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
            height: 44.v,
            text: "Gifting",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
        ],
      ),
    );
  }
}
