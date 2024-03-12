import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MeterTypeScreen extends StatelessWidget {
  MeterTypeScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  TextEditingController meterNovalueController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController customerNovalueController = TextEditingController();

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
                              left: 20.h, top: 26.v, right: 20.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
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
                                      padding:
                                          EdgeInsets.only(left: 76.h, top: 2.v),
                                      child: Text("Pay Electricity Bill",
                                          style: theme.textTheme.titleSmall))
                                ])),
                            SizedBox(height: 28.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 245.h,
                                    margin: EdgeInsets.only(right: 74.h),
                                    child: Text(
                                        "Empower Your Payments, Anytime, Anywhere.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleSmall))),
                            SizedBox(height: 22.v),
                            CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 13.v, 11.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowdown,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)),
                                hintText: "Select Disco company",
                                items: dropdownItemList,
                                onChanged: (value) {}),
                            SizedBox(height: 24.v),
                            CustomDropDown(
                                icon: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 13.v, 11.h, 13.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgArrowdown,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize)),
                                hintText: "Meter Type",
                                items: dropdownItemList1,
                                onChanged: (value) {}),
                            SizedBox(height: 24.v),
                            _buildMeterNovalue(context),
                            SizedBox(height: 24.v),
                            _buildAmount(context),
                            SizedBox(height: 24.v),
                            _buildCustomerNovalue(context),
                            SizedBox(height: 68.v),
                            _buildValidateMeter(context)
                          ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          decoration: AppDecoration.black,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Spacer(), _buildFrame(context)])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildMeterNovalue(BuildContext context) {
    return CustomTextFormField(
        controller: meterNovalueController, hintText: "Meter No.");
  }

  /// Section Widget
  Widget _buildAmount(BuildContext context) {
    return CustomTextFormField(
        controller: amountController, hintText: "Amount");
  }

  /// Section Widget
  Widget _buildCustomerNovalue(BuildContext context) {
    return CustomTextFormField(
        controller: customerNovalueController,
        hintText: "Customer No.",
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildValidateMeter(BuildContext context) {
    return CustomOutlinedButton(
        width: 153.h,
        text: "Validate meter",
        buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19);
  }

  /// Section Widget
  Widget _buildPrepaid(BuildContext context) {
    return CustomOutlinedButton(
        height: 44.v,
        text: "Prepaid",
        buttonTextStyle:
            CustomTextStyles.titleMediumOnPrimaryContainerSemiBold);
  }

  /// Section Widget
  Widget _buildPostpaid(BuildContext context) {
    return CustomOutlinedButton(
        height: 44.v,
        text: "Postpaid",
        buttonTextStyle:
            CustomTextStyles.titleMediumOnPrimaryContainerSemiBold);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 41.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 19.v),
          _buildPrepaid(context),
          SizedBox(height: 20.v),
          _buildPostpaid(context)
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
