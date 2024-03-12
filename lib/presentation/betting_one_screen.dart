import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BettingOneScreen extends StatelessWidget {
  BettingOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController phoneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                                horizontal: 18.h, vertical: 40.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
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
                                            padding: EdgeInsets.only(
                                                left: 120.h, top: 2.v),
                                            child: Text("Betting",
                                                style:
                                                    theme.textTheme.titleSmall))
                                      ])),
                                  SizedBox(height: 32.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: CustomDropDown(
                                          icon: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 13.v, 20.h, 13.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgArrowdown,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize)),
                                          hintText: "Select Provider",
                                          items: dropdownItemList,
                                          onChanged: (value) {})),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: CustomTextFormField(
                                          controller: phoneController,
                                          hintText:
                                              "User ID (SportyBet phone no.)",
                                          textInputAction: TextInputAction.done,
                                          textInputType: TextInputType.phone)),
                                  SizedBox(height: 49.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text("Select Amount",
                                          style: CustomTextStyles.bodySmall12)),
                                  SizedBox(height: 19.v),
                                  _buildFrame(context),
                                  SizedBox(height: 16.v),
                                  _buildFrame1(context),
                                  SizedBox(height: 36.v),
                                  _buildFrame2(context),
                                  SizedBox(height: 59.v),
                                  _buildFrame3(context),
                                  SizedBox(height: 5.v)
                                ]))))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "100", style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "4", style: CustomTextStyles.titleSmallff9b03d0),
                    TextSpan(
                        text: "00", style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "9", style: CustomTextStyles.titleSmallff9b03d0),
                    TextSpan(
                        text: "00", style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "1,900",
                        style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "4,9",
                        style: CustomTextStyles.titleSmallff9b03d0),
                    TextSpan(
                        text: "00", style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.titleSmallff9b03d0
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "9,900",
                        style: CustomTextStyles.titleSmallff9b03d0)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 3.v, bottom: 4.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.bodySmallff2f2f2f
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "   Amount",
                        style: CustomTextStyles.bodySmallff2f2f2f
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 2.v),
              decoration: AppDecoration.outlineOnPrimary1
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Text("Pay", style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return SizedBox(
        height: 113.v,
        width: 321.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 51.v,
                  width: 319.h,
                  decoration: BoxDecoration(
                      color: theme.colorScheme.onPrimary,
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.gray6003f01,
                            spreadRadius: 2.h,
                            blurRadius: 2.h,
                            offset: Offset(2, 2))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 113.v,
                  width: 321.h,
                  child: Stack(alignment: Alignment.topLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgImage16,
                        height: 51.v,
                        width: 28.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 2.h)),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 62.h, top: 14.v),
                            child: Text("AFCON 2023/GROUP B",
                                style: CustomTextStyles.titleSmallBold))),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: EdgeInsets.only(top: 50.v),
                            padding: EdgeInsets.symmetric(vertical: 6.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 1.v),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImages1,
                                            height: 23.v,
                                            width: 36.h),
                                        SizedBox(height: 7.v),
                                        Text("Cape Verde",
                                            style: CustomTextStyles.bodySmall12)
                                      ])),
                                  Container(
                                      height: 33.v,
                                      width: 38.h,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 7.v),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Text("15:00",
                                                    style: CustomTextStyles
                                                        .titleSmallPurpleA200Bold)),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Opacity(
                                                    opacity: 0.6,
                                                    child: Text("Today",
                                                        style: CustomTextStyles
                                                            .bodySmallOnPrimaryContainer)))
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 2.v),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage17,
                                            height: 18.v,
                                            width: 28.h),
                                        SizedBox(height: 6.v),
                                        Text("Mozambique",
                                            style: CustomTextStyles.bodySmall12)
                                      ]))
                                ])))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Pricing:
        return "/";
      case BottomBarEnum.Referrals:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
