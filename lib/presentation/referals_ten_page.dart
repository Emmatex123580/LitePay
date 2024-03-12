import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ReferalsTenPage extends StatefulWidget {
  const ReferalsTenPage({Key? key})
      : super(
          key: key,
        );

  @override
  ReferalsTenPageState createState() => ReferalsTenPageState();
}

class ReferalsTenPageState extends State<ReferalsTenPage>
    with AutomaticKeepAliveClientMixin<ReferalsTenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              _buildSubmitSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmitSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "New PIN",
              style: CustomTextStyles.titleSmall15,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 320.h,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
          SizedBox(height: 40.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Re - enter New PIN",
              style: CustomTextStyles.titleSmall15,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 320.h,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
          SizedBox(height: 40.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Account Password",
              style: CustomTextStyles.titleSmall15,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 320.h,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgEye,
              height: 18.adaptSize,
              width: 18.adaptSize,
            ),
          ),
          SizedBox(height: 51.v),
          CustomElevatedButton(
            height: 40.v,
            text: "Submit",
            margin: EdgeInsets.symmetric(horizontal: 43.h),
            buttonStyle: CustomButtonStyles.fillPurpleA,
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
          ),
        ],
      ),
    );
  }
}
