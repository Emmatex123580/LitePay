import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

class WithdrawBonusTwoScreen extends StatelessWidget {
  const WithdrawBonusTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                            padding: EdgeInsets.only(left: 74.h, top: 2.v),
                            child: Text("Lodge Complaint",
                                style: theme.textTheme.titleSmall))
                      ]),
                      SizedBox(height: 45.v),
                      Container(
                          width: 253.h,
                          margin: EdgeInsets.only(right: 65.h),
                          child: Text(
                              "You will be directed to our customer care via whatsapp to be able to lodge your complaint.",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall)),
                      Spacer(flex: 22),
                      CustomOutlinedButton(
                          text: "Lodge complaint",
                          margin: EdgeInsets.symmetric(horizontal: 26.h),
                          buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15,
                          alignment: Alignment.center),
                      Spacer(flex: 77)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
