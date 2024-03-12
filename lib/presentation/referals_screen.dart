import 'package:flutter/material.dart';
import '../core/app_export.dart';

class ReferalsScreen extends StatelessWidget {
  const ReferalsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant
                                    .imgArrowLeftOnprimarycontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                onTap: () {
                                  onTapImgArrowLeft(context);
                                }),
                            Padding(
                                padding: EdgeInsets.only(left: 102.h),
                                child: Text("Referals",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer_1))
                          ])),
                      SizedBox(height: 25.v),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("LitePay Referal Program",
                              style: CustomTextStyles.titleLargeMedium)),
                      SizedBox(height: 18.v),
                      Container(
                          width: 326.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Refer people to LitePay.com to earn 5% of their first payment and ",
                                    style: CustomTextStyles.bodyLargeff2f2f2f),
                                TextSpan(
                                    text:
                                        "N500 immediately the person upgrade his/her account to affiliate or topuser (Tap to copy)",
                                    style: CustomTextStyles.bodyLargeff2f2f2f
                                        .copyWith(
                                            decoration:
                                                TextDecoration.lineThrough))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 25.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtHttpswwwLitepaycomahby(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 6.h),
                              child: Text("https//www.Litepay.com?=ahby",
                                  style:
                                      CustomTextStyles.bodyLargeIndigoA200))),
                      Spacer(flex: 35),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h),
                          child: Text("Referals ",
                              style: CustomTextStyles.titleMediumPrimary18)),
                      SizedBox(height: 17.v),
                      Container(
                          width: 272.h,
                          margin: EdgeInsets.only(left: 6.h, right: 53.h),
                          child: Text(
                              "You have not refered any user yet, your referals will appear here.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyLarge)),
                      Spacer(flex: 64)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtHttpswwwLitepaycomahby(BuildContext context) {
    // TODO: implement Actions
  }
}
