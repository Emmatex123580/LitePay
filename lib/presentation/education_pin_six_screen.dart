import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EducationPinSixScreen extends StatelessWidget {
  EducationPinSixScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController amountController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 756.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 20.h, top: 21.v),
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
                                            left: 67.h, top: 2.v),
                                        child: Text("Result  Checker pin",
                                            style: theme.textTheme.titleSmall))
                                  ]))),
                          _buildFrame1(context),
                          Opacity(
                              opacity: 0.6,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 756.v,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onPrimaryContainer
                                              .withOpacity(0.56))))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin: EdgeInsets.only(left: 1.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 17.h, vertical: 28.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        _buildFrame2(context),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Opacity(
                                                opacity: 0.7,
                                                child: Container(
                                                    width: 303.h,
                                                    margin: EdgeInsets.only(
                                                        left: 1.h, right: 20.h),
                                                    child: Text(
                                                        "You have not set transaction pin, Please set Transaction pin to confirm this transaction",
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style: CustomTextStyles
                                                            .bodyMediumOnPrimaryContainer)))),
                                        SizedBox(height: 15.v),
                                        Text("Enter PIN to confirm",
                                            style: CustomTextStyles
                                                .titleSmallSemiBold),
                                        SizedBox(height: 8.v),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                  width: 31.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10.h,
                                                      vertical: 1.v),
                                                  decoration: AppDecoration
                                                      .purple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Text("*",
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900)),
                                              Container(
                                                  width: 31.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 1.v),
                                                  decoration: AppDecoration
                                                      .purple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Text("*",
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900)),
                                              Container(
                                                  width: 31.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 1.v),
                                                  decoration: AppDecoration
                                                      .purple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Text("*",
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900)),
                                              Container(
                                                  width: 31.h,
                                                  margin: EdgeInsets.only(
                                                      left: 20.h),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h,
                                                      vertical: 1.v),
                                                  decoration: AppDecoration
                                                      .purple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Text("*",
                                                      style: CustomTextStyles
                                                          .titleSmallBlack900))
                                            ]),
                                        SizedBox(height: 37.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 48.h, right: 29.h),
                                            child: _buildFrame(context,
                                                frame: "1",
                                                frame1: "2",
                                                frame2: "3",
                                                frame3: "4")),
                                        SizedBox(height: 12.v),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 48.h, right: 29.h),
                                            child: _buildFrame(context,
                                                frame: "5",
                                                frame1: "6",
                                                frame2: "7",
                                                frame3: "8")),
                                        SizedBox(height: 12.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 120.h, right: 41.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          width: 32.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h,
                                                                  vertical:
                                                                      3.v),
                                                          decoration: AppDecoration
                                                              .fillPurple
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder15),
                                                          child: Text("9",
                                                              style: CustomTextStyles
                                                                  .titleSmallPrimary)),
                                                      Spacer(),
                                                      Container(
                                                          width: 32.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom: 5.v),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      11.h,
                                                                  vertical:
                                                                      3.v),
                                                          decoration: AppDecoration
                                                              .fillPurple
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder15),
                                                          child: Text("0",
                                                              style: CustomTextStyles
                                                                  .titleSmallPrimary)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgMaterialSymbolRedA70032x32,
                                                          height: 32.adaptSize,
                                                          width: 32.adaptSize,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 28.h,
                                                                  top: 5.v))
                                                    ]))),
                                        SizedBox(height: 31.v),
                                        Text("OR",
                                            style: CustomTextStyles
                                                .labelLargeOnPrimaryContainer_1),
                                        SizedBox(height: 1.v),
                                        Text("Use Fingerprint",
                                            style: CustomTextStyles
                                                .labelLargePurpleA200),
                                        SizedBox(height: 2.v)
                                      ])))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 20.h, top: 110.v, right: 20.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomDropDown(
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 14.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdown,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  hintText: "WAEC",
                  hintStyle: CustomTextStyles.bodyMedium14,
                  items: dropdownItemList,
                  onChanged: (value) {}),
              SizedBox(height: 33.v),
              Container(
                  width: 320.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
                  decoration: AppDecoration.outlinePurpleA
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Opacity(
                      opacity: 0.4,
                      child: Text("2",
                          style:
                              CustomTextStyles.bodySmallOnPrimaryContainer12))),
              SizedBox(height: 33.v),
              CustomTextFormField(
                  controller: amountController,
                  hintText: "N7000.00",
                  textInputAction: TextInputAction.done),
              SizedBox(height: 32.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 114.h, vertical: 9.v),
                  decoration: AppDecoration.fillPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        Text("Generate Pin",
                            style: CustomTextStyles.titleSmallOnPrimarySemiBold)
                      ]))
            ])));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text("Confirm Transaction",
                  style: CustomTextStyles
                      .titleMediumOnPrimaryContainerSemiBold18)),
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolRedA70024x24,
              height: 28.adaptSize,
              width: 28.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String frame,
    required String frame1,
    required String frame2,
    required String frame3,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
          decoration: AppDecoration.fillPurple
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Text(frame,
              style: CustomTextStyles.titleSmallPrimary
                  .copyWith(color: theme.colorScheme.primary))),
      Spacer(flex: 33),
      Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
          decoration: AppDecoration.fillPurple
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Text(frame1,
              style: CustomTextStyles.titleSmallPrimary
                  .copyWith(color: theme.colorScheme.primary))),
      Spacer(flex: 33),
      Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
          decoration: AppDecoration.fillPurple
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Text(frame2,
              style: CustomTextStyles.titleSmallPrimary
                  .copyWith(color: theme.colorScheme.primary))),
      Spacer(flex: 33),
      Container(
          width: 32.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 3.v),
          decoration: AppDecoration.fillPurple
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Text(frame3,
              style: CustomTextStyles.titleSmallPrimary
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
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
