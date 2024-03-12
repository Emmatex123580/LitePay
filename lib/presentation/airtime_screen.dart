import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AirtimeScreen extends StatelessWidget {
  AirtimeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController amountController = TextEditingController();

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
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
                            padding: EdgeInsets.only(left: 76.h, top: 2.v),
                            child: Text("Airtime Top-up",
                                style: theme.textTheme.titleSmall))
                      ])),
                  SizedBox(height: 54.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 13.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 16.adaptSize,
                              width: 16.adaptSize)),
                      hintText: "Select Network",
                      items: dropdownItemList,
                      onChanged: (value) {}),
                  SizedBox(height: 24.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 13.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 16.adaptSize,
                              width: 16.adaptSize)),
                      hintText: "Airtime Type",
                      items: dropdownItemList1,
                      onChanged: (value) {}),
                  SizedBox(height: 24.v),
                  CustomTextFormField(
                      controller: amountController,
                      hintText: "Amount",
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 24.v),
                  _buildSelectNetworkFrame(context),
                  SizedBox(height: 24.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30.h, vertical: 13.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 16.adaptSize,
                              width: 16.adaptSize)),
                      hintText: "Amount to pay",
                      items: dropdownItemList2,
                      onChanged: (value) {}),
                  SizedBox(height: 54.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(right: 84.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin:
                                        EdgeInsets.only(top: 8.v, bottom: 10.v),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: theme.colorScheme.primary,
                                            width: 1.h))),
                                Expanded(
                                    child: Container(
                                        width: 195.h,
                                        margin: EdgeInsets.only(left: 24.h),
                                        child: Text(
                                            "Bypass number validator for ported number",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style:
                                                CustomTextStyles.bodySmall11)))
                              ]))),
                  SizedBox(height: 42.v),
                  CustomOutlinedButton(
                      width: 110.h,
                      text: "Buy Airtime",
                      buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSelectNetworkFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.outlinePurpleA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Opacity(
              opacity: 0.4,
              child: Text("Phone No.",
                  style: CustomTextStyles.bodySmallOnPrimaryContainer12)),
          CustomImageView(
              imagePath: ImageConstant.imgMaterialSymbolOnprimarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(right: 52.h))
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
