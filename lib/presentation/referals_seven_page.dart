import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReferalsSevenPage extends StatefulWidget {
  const ReferalsSevenPage({Key? key})
      : super(
          key: key,
        );

  @override
  ReferalsSevenPageState createState() => ReferalsSevenPageState();
}

class ReferalsSevenPageState extends State<ReferalsSevenPage>
    with AutomaticKeepAliveClientMixin<ReferalsSevenPage> {
  TextEditingController reenterNewPINController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              _buildPinEntry(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPinEntry(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Old PIN",
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
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: CustomTextFormField(
              controller: reenterNewPINController,
              hintText: "Re-enter New PIN",
              hintStyle: CustomTextStyles.titleSmall15,
              textInputAction: TextInputAction.done,
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
