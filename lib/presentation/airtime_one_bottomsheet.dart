import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AirtimeOneBottomsheet extends StatelessWidget {
  const AirtimeOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 52.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomOutlinedButton(
            height: 44.v,
            text: "VTU",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
            height: 44.v,
            text: "Share and Sell",
            buttonTextStyle:
                CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
