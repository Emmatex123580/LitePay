import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReferalsThreeScreen extends StatelessWidget {
  ReferalsThreeScreen({Key? key}) : super(key: key);

  TextEditingController newpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 41.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 4.h, right: 91.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgArrowLeftOnprimarycontainer,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 2.v),
                                            onTap: () {
                                              onTapImgArrowLeft(context);
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 61.h, top: 2.v),
                                            child: Text("Change Password",
                                                style: CustomTextStyles
                                                    .titleMediumOnPrimaryContainer_1))
                                      ])),
                                  SizedBox(height: 67.v),
                                  Text("Old Password",
                                      style: CustomTextStyles.titleSmall15),
                                  SizedBox(height: 7.v),
                                  _buildPasswordFrame(context),
                                  SizedBox(height: 40.v),
                                  Text("New Password",
                                      style: CustomTextStyles.titleSmall15),
                                  SizedBox(height: 7.v),
                                  _buildNewPasswordFrame(context),
                                  SizedBox(height: 40.v),
                                  Padding(
                                      padding: EdgeInsets.only(right: 16.h),
                                      child: CustomTextFormField(
                                          controller: newpasswordController,
                                          hintText: "Re-enter New Password",
                                          hintStyle:
                                              CustomTextStyles.titleSmall15,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true)),
                                  SizedBox(height: 7.v),
                                  _buildConfirmPasswordFrame(context),
                                  SizedBox(height: 51.v),
                                  CustomElevatedButton(
                                      height: 40.v,
                                      text: "MTN",
                                      margin: EdgeInsets.only(
                                          left: 43.h, right: 51.h),
                                      buttonStyle:
                                          CustomButtonStyles.fillPurpleA,
                                      buttonTextStyle:
                                          CustomTextStyles.titleMediumOnPrimary,
                                      alignment: Alignment.center),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildPasswordFrame(BuildContext context) {
    return Container(
        width: 320.h,
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: CustomImageView(
            imagePath: ImageConstant.imgEyesClosedBlack900,
            height: 18.adaptSize,
            width: 18.adaptSize));
  }

  /// Section Widget
  Widget _buildNewPasswordFrame(BuildContext context) {
    return Container(
        width: 320.h,
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: CustomImageView(
            imagePath: ImageConstant.imgEyesClosedBlack900,
            height: 18.adaptSize,
            width: 18.adaptSize));
  }

  /// Section Widget
  Widget _buildConfirmPasswordFrame(BuildContext context) {
    return Container(
        width: 320.h,
        margin: EdgeInsets.only(right: 8.h),
        padding: EdgeInsets.all(8.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: CustomImageView(
            imagePath: ImageConstant.imgEyesClosedBlack900,
            height: 18.adaptSize,
            width: 18.adaptSize));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
