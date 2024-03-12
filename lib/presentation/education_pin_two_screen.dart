import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class EducationPinTwoScreen extends StatelessWidget {
  EducationPinTwoScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController quantityController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 21.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h, right: 94.h),
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
                                padding: EdgeInsets.only(left: 67.h, top: 2.v),
                                child: Text("Result  Checker pin",
                                    style: theme.textTheme.titleSmall))
                          ])),
                      SizedBox(height: 64.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      30.h, 13.v, 12.h, 13.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowdown,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize)),
                              hintText: "Select Exam",
                              items: dropdownItemList,
                              onChanged: (value) {})),
                      SizedBox(height: 33.v),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: CustomTextFormField(
                              controller: quantityController,
                              hintText: "Quantity",
                              textInputAction: TextInputAction.done)),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          height: 41.v,
                          text: "Generate Pin",
                          margin: EdgeInsets.only(left: 2.h),
                          buttonStyle: CustomButtonStyles.fillPurpleA,
                          buttonTextStyle:
                              CustomTextStyles.titleSmallOnPrimarySemiBold),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
