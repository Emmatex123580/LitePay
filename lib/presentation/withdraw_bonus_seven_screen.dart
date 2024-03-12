import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WithdrawBonusSevenScreen extends StatelessWidget {
  WithdrawBonusSevenScreen({Key? key}) : super(key: key);

  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftOnprimarycontainer,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 120.h, top: 2.v),
                            child: Text("Betting",
                                style: theme.textTheme.titleSmall))
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
                      CustomOutlinedButton(
                          text: "Move to Wallet",
                          margin: EdgeInsets.symmetric(horizontal: 26.h),
                          buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15,
                          alignment: Alignment.center),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
