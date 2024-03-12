import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SuccessfulElectPayScreen extends StatelessWidget {
  SuccessfulElectPayScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController numberOneEditTextController = TextEditingController();

  TextEditingController amountEditTextController = TextEditingController();

  TextEditingController numberTwoEditTextController = TextEditingController();

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
                        child: SizedBox(
                            height: 697.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.h,
                                              top: 26.v,
                                              right: 20.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgArrowLeftOnprimarycontainer,
                                                          height: 24.adaptSize,
                                                          width: 24.adaptSize,
                                                          onTap: () {
                                                            onTapImgArrowLeft(
                                                                context);
                                                          }),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 76.h,
                                                                  top: 2.v),
                                                          child: Text(
                                                              "Pay Electricity Bill",
                                                              style: theme
                                                                  .textTheme
                                                                  .titleSmall))
                                                    ])),
                                                SizedBox(height: 28.v),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                        width: 245.h,
                                                        margin: EdgeInsets.only(
                                                            right: 74.h),
                                                        child: Text(
                                                            "Empower Your Payments, Anytime, Anywhere.",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: theme
                                                                .textTheme
                                                                .titleSmall))),
                                                SizedBox(height: 22.v),
                                                CustomDropDown(
                                                    icon: Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                30.h,
                                                                13.v,
                                                                15.h,
                                                                13.v),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgArrowdown,
                                                            height:
                                                                16.adaptSize,
                                                            width:
                                                                16.adaptSize)),
                                                    hintText: "Enugu Electric",
                                                    items: dropdownItemList,
                                                    onChanged: (value) {}),
                                                SizedBox(height: 24.v),
                                                CustomDropDown(
                                                    icon: Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                30.h,
                                                                13.v,
                                                                14.h,
                                                                13.v),
                                                        child: CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgArrowdown,
                                                            height:
                                                                16.adaptSize,
                                                            width:
                                                                16.adaptSize)),
                                                    hintText: "Prepaid",
                                                    items: dropdownItemList1,
                                                    onChanged: (value) {}),
                                                SizedBox(height: 24.v),
                                                _buildNumberOneEditText(
                                                    context),
                                                SizedBox(height: 24.v),
                                                _buildAmountEditText(context),
                                                SizedBox(height: 24.v),
                                                _buildNumberTwoEditText(
                                                    context),
                                                SizedBox(height: 68.v),
                                                _buildValidateMeterButton(
                                                    context)
                                              ]))),
                                  Opacity(
                                      opacity: 0.4,
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                              height: 756.v,
                                              width: double.maxFinite,
                                              decoration: BoxDecoration(
                                                  color: theme.colorScheme
                                                      .onPrimaryContainer))))
                                ]))))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildNumberOneEditText(BuildContext context) {
    return CustomTextFormField(
        controller: numberOneEditTextController,
        hintText: "08919687",
        textInputType: TextInputType.phone);
  }

  /// Section Widget
  Widget _buildAmountEditText(BuildContext context) {
    return CustomTextFormField(
        controller: amountEditTextController, hintText: "5,000");
  }

  /// Section Widget
  Widget _buildNumberTwoEditText(BuildContext context) {
    return CustomTextFormField(
        controller: numberTwoEditTextController,
        hintText: "08059715176",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone);
  }

  /// Section Widget
  Widget _buildValidateMeterButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 153.h,
        text: "Validate meter",
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19);
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
