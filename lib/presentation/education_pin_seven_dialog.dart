import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class EducationPinSevenDialog extends StatelessWidget {
  const EducationPinSevenDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 67.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmark,
            height: 39.v,
            width: 57.h,
          ),
          SizedBox(height: 22.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "Success",
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            "Transaction  Successful",
            style: CustomTextStyles.bodyMedium14,
          ),
          SizedBox(height: 20.v),
          CustomOutlinedButton(
            height: 25.v,
            text: "Ok",
            margin: EdgeInsets.symmetric(horizontal: 21.h),
            buttonStyle: CustomButtonStyles.outlineOnPrimaryTL121,
          ),
        ],
      ),
    );
  }
}
