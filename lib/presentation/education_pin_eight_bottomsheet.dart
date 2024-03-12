import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class EducationPinEightBottomsheet extends StatelessWidget {
  const EducationPinEightBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.7,
              child: Text(
                "Select Exam",
                style: CustomTextStyles.bodyMediumOnPrimaryContainer,
              ),
            ),
            SizedBox(height: 12.v),
            CustomOutlinedButton(
              height: 44.v,
              text: "WAEC",
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
            ),
            SizedBox(height: 20.v),
            CustomOutlinedButton(
              height: 44.v,
              text: "NECO",
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
            ),
            SizedBox(height: 20.v),
            CustomOutlinedButton(
              height: 44.v,
              text: "NABTEB",
              buttonTextStyle:
                  CustomTextStyles.titleMediumOnPrimaryContainerSemiBold,
            ),
            SizedBox(height: 34.v),
          ],
        ),
      ),
    );
  }
}
