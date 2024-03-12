import 'package:flutter/material.dart';
import '../core/app_export.dart';

class WithdrawBonusThreeScreen extends StatelessWidget {
  const WithdrawBonusThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 42.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 44.v),
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowLeftOnprimarycontainer,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          margin: EdgeInsets.only(bottom: 3.v),
                                          onTap: () {
                                            onTapImgArrowLeft(context);
                                          }),
                                      Padding(
                                          padding: EdgeInsets.only(left: 102.h),
                                          child: Text("Setting",
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryContainer18))
                                    ]),
                                    SizedBox(height: 25.v),
                                    Text("Account",
                                        style: CustomTextStyles
                                            .titleSmallPrimary15),
                                    SizedBox(height: 19.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 74.h),
                                        child: Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgLockBlack900,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.h, top: 4.v),
                                              child: Text(
                                                  "Nwadike Chinaza Abigail",
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMdiShieldTickOutline,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 4.v),
                                          child: Text("Ahby",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMaterialSymbolBlack90028x28,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 2.v),
                                          child: Text("08059941818",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 20.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 47.h),
                                        child: Row(children: [
                                          Opacity(
                                              opacity: 0.6,
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgLetsIconsMessage,
                                                  height: 28.adaptSize,
                                                  width: 28.adaptSize)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 20.h, top: 4.v),
                                              child: Text(
                                                  "abigailnwadike@gmail.com",
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgPepiconsPencilPeople,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 3.v),
                                          child: Text("My Referals",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 36.v),
                                    Text("Security",
                                        style: CustomTextStyles
                                            .titleSmallPrimary15),
                                    SizedBox(height: 18.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMdiPasswordOutline,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 4.v),
                                          child: Text("Change Password",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEmojioneMonotoneBoy,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 2.v),
                                          child: Text("KYC",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMdiPasswordOutline,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 4.v),
                                          child: Text("PIN Management",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUitSignout,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 4.v),
                                          child: Text("SignOut",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 23.v),
                                    Text("About",
                                        style: CustomTextStyles
                                            .titleSmallPrimary15),
                                    SizedBox(height: 19.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFluentContact,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 3.v),
                                          child: Text("About LitePay",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgTdesignPersonalInformation,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, top: 2.v),
                                          child: Text("Contact Us",
                                              style: theme.textTheme.bodyLarge))
                                    ]),
                                    SizedBox(height: 20.v),
                                    Row(children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUserBlack900,
                                              height: 28.adaptSize,
                                              width: 28.adaptSize)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h, bottom: 2.v),
                                          child: Text("Visit Website",
                                              style: theme.textTheme.bodyLarge))
                                    ])
                                  ]))))
                ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
