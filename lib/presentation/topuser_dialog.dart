import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore_for_file: must_be_immutable
class TopuserDialog extends StatelessWidget {
  const TopuserDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                "Dear Nkky",
                style: CustomTextStyles.titleSmallBold,
              ),
            ),
          ),
          SizedBox(height: 4.v),
          Container(
            width: 191.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 15.h,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Kindly note that you will be charged ",
                    style: CustomTextStyles.bodyMediumff2f2f2f,
                  ),
                  TextSpan(
                    text: "N5000 to upgrade to Affilliate package ",
                    style: CustomTextStyles.bodyMediumff2f2f2f.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 81.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.red.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "No Cancel",
                    style: CustomTextStyles.labelLargeRedA700,
                  ),
                ),
                Container(
                  width: 89.h,
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 2.v,
                  ),
                  decoration: AppDecoration.whiteGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Text(
                    "Yes Submit",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}
