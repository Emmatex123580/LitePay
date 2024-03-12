import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class BettingFiveDialog extends StatelessWidget {
  const BettingFiveDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 52.h,
        vertical: 50.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 39.v,
            width: 57.h,
          ),
          SizedBox(height: 22.v),
          Text(
            "Success",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 9.v),
          Text(
            "Betting successfully booked",
            style: CustomTextStyles.bodyMedium14,
          ),
          SizedBox(height: 42.v),
          Text(
            "Confirm",
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
