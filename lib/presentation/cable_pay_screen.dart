import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CablePayScreen extends StatelessWidget {
  CablePayScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController cardNumberController = TextEditingController();

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
                                horizontal: 20.h, vertical: 37.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
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
                                            left: 76.h, top: 2.v),
                                        child: Text("Pay Electricity Bill",
                                            style: theme.textTheme.titleSmall))
                                  ])),
                              SizedBox(height: 43.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("How much would you like to pay?",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainerSemiBold)),
                              SizedBox(height: 60.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 13.v, 16.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  hintText: "Select Cable",
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              SizedBox(height: 16.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 13.v, 16.h, 13.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  hintText: "Select Plan",
                                  items: dropdownItemList1,
                                  onChanged: (value) {}),
                              SizedBox(height: 16.v),
                              CustomTextFormField(
                                  controller: cardNumberController,
                                  hintText: "IUC/Smartcard Number",
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.number),
                              SizedBox(height: 80.v),
                              CustomOutlinedButton(
                                  width: 164.h,
                                  text: "Validate Cable Number",
                                  buttonStyle:
                                      CustomButtonStyles.outlineOnPrimaryTL19),
                              SizedBox(height: 5.v)
                            ]))))),
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
