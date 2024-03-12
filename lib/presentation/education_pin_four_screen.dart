import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EducationPinFourScreen extends StatelessWidget {
  EducationPinFourScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController nvalueController = TextEditingController();

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
                        child: Stack(alignment: Alignment.center, children: [
                          _buildFrame(context),
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
                          _buildFrame1(context)
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 19.h, top: 21.v, right: 19.h),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(right: 94.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftOnprimarycontainer,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 67.h, top: 2.v),
                            child: Text("Result  Checker pin",
                                style: theme.textTheme.titleSmall))
                      ])),
                  SizedBox(height: 64.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomDropDown(
                          icon: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 14.v),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowdown,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize)),
                          hintText: "WAEC",
                          hintStyle: CustomTextStyles.bodyMedium14,
                          items: dropdownItemList,
                          onChanged: (value) {})),
                  SizedBox(height: 33.v),
                  Container(
                      width: 320.h,
                      margin: EdgeInsets.only(left: 1.h),
                      padding: EdgeInsets.symmetric(
                          horizontal: 11.h, vertical: 10.v),
                      decoration: AppDecoration.outlinePurpleA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5),
                      child: Opacity(
                          opacity: 0.4,
                          child: Text("2",
                              style: CustomTextStyles
                                  .bodySmallOnPrimaryContainer12))),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: CustomTextFormField(
                          controller: nvalueController,
                          hintText: "N7000.00",
                          textInputAction: TextInputAction.done)),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      height: 41.v,
                      text: "Generate Pin",
                      margin: EdgeInsets.only(left: 1.h),
                      buttonStyle: CustomButtonStyles.fillPurpleA,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOnPrimarySemiBold)
                ])));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 1.h),
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 28.v),
            decoration:
                BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder15),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text("Confirm Transaction",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainerSemiBold18)),
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgMaterialSymbolRedA70024x24,
                            height: 28.adaptSize,
                            width: 28.adaptSize)
                      ])),
              SizedBox(height: 24.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Opacity(
                      opacity: 0.7,
                      child: Container(
                          width: 299.h,
                          margin: EdgeInsets.only(left: 1.h, right: 24.h),
                          child: Text(
                              "You are about to purchase 1 piece of WAEC exam pin at N3500.00",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .bodyMediumOnPrimaryContainer)))),
              SizedBox(height: 25.v),
              CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolBlack900,
                  height: 36.adaptSize,
                  width: 36.adaptSize),
              SizedBox(height: 12.v),
              Text("Use Fingerprint",
                  style: CustomTextStyles.labelLargeOnPrimaryContainer),
              SizedBox(height: 7.v),
              Text("OR", style: CustomTextStyles.labelMediumPrimary),
              SizedBox(height: 7.v),
              Text("Use PIN Instead",
                  style: CustomTextStyles.labelLargePrimaryContainer),
              SizedBox(height: 5.v)
            ])));
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
