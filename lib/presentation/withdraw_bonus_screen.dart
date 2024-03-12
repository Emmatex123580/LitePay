import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WithdrawBonusScreen extends StatelessWidget {
  WithdrawBonusScreen({Key? key}) : super(key: key);

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 756.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  _buildAmountSection(context),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 130.h, vertical: 252.v),
                          decoration: AppDecoration.black,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup52,
                              height: 107.v,
                              width: 100.h)))
                ]))));
  }

  /// Section Widget
  Widget _buildAmountSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 41.v, right: 20.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        onTap: () {
                          onTapImgArrowLeft(context);
                        }),
                    Padding(
                        padding: EdgeInsets.only(left: 120.h, top: 2.v),
                        child:
                            Text("Betting", style: theme.textTheme.titleSmall))
                  ]),
                  SizedBox(height: 45.v),
                  Padding(
                      padding: EdgeInsets.only(left: 65.h),
                      child: Text("Enter bonus amount",
                          style: CustomTextStyles
                              .titleMediumOnPrimaryContainerBold)),
                  SizedBox(height: 29.v),
                  CustomTextFormField(
                      controller: amountController,
                      hintText: "Amount",
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 80.v),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 26.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 88.h, vertical: 8.v),
                          decoration: AppDecoration.outlineOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Text("Move to Wallet",
                              style: theme.textTheme.labelLarge)))
                ])));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
