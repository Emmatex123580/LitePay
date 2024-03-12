import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BettingScreen extends StatelessWidget {
  BettingScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController amountController = TextEditingController();

  TextEditingController nvalueController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 697.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 18.h, top: 40.v, right: 18.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
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
                                                30.h, 13.v, 12.h, 13.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgArrowdown,
                                                height: 16.adaptSize,
                                                width: 16.adaptSize)),
                                        hintText: "SportyBet",
                                        hintStyle: CustomTextStyles
                                            .labelLargeOnPrimaryContainerBold13,
                                        items: dropdownItemList,
                                        prefix: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                12.h, 8.v, 13.h, 8.v),
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage18,
                                                height: 25.v,
                                                width: 26.h)),
                                        prefixConstraints:
                                            BoxConstraints(maxHeight: 42.v),
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: 10.v),
                                        onChanged: (value) {})),
                                SizedBox(height: 20.v),
                                _buildSelectNetwork(context),
                                SizedBox(height: 49.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text("Select Amount",
                                        style: CustomTextStyles.bodySmall12)),
                                SizedBox(height: 19.v),
                                _buildSelectAmount(context),
                                SizedBox(height: 16.v),
                                _buildRecentOrders(context),
                                SizedBox(height: 36.v),
                                _buildPaymentOptions(context),
                                SizedBox(height: 59.v),
                                _buildClientTestimonials(context)
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 129.h, vertical: 197.v),
                          decoration: AppDecoration.black,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup52,
                              height: 107.v,
                              width: 100.h)))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSelectNetwork(BuildContext context) {
    return Container(
        width: 320.h,
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.outlinePurpleA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Opacity(
            opacity: 0.4,
            child: Text("08069323241",
                style: CustomTextStyles.bodySmallOnPrimaryContainer12)));
  }

  /// Section Widget
  Widget _buildSelectAmount(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomTextFormField(
              width: 62.h,
              controller: amountController,
              hintText: "N100",
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v),
              borderDecoration: TextFormFieldStyleHelper.fillPurple,
              filled: true,
              fillColor: appTheme.purple10001),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
              decoration: AppDecoration.fillPurple
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "N",
                              style: CustomTextStyles.titleSmallff9b03d0
                                  .copyWith(
                                      decoration: TextDecoration.lineThrough)),
                          TextSpan(
                              text: "4",
                              style: CustomTextStyles.titleSmallff9b03d0),
                          TextSpan(
                              text: "00",
                              style: CustomTextStyles.titleSmallff9b03d0)
                        ]),
                        textAlign: TextAlign.left)
                  ])),
          CustomTextFormField(
              width: 62.h,
              controller: nvalueController,
              hintText: "N900",
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.v),
              borderDecoration: TextFormFieldStyleHelper.fillPurple,
              filled: true,
              fillColor: appTheme.purple10001)
        ]));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
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
  Widget _buildPaymentOptions(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.all(6.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder19),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h, top: 4.v, bottom: 3.v),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "N",
                        style: CustomTextStyles.labelLargeff2f2f2f
                            .copyWith(decoration: TextDecoration.lineThrough)),
                    TextSpan(
                        text: "   15,000",
                        style: CustomTextStyles.labelLargeff2f2f2f
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)),
          Container(
              width: 62.h,
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 2.v),
              decoration: AppDecoration.whitePurple
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Text("Pay", style: theme.textTheme.labelLarge))
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
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
