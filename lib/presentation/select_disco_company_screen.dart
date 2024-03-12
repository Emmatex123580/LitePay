import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_search_view.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectDiscoCompanyScreen extends StatelessWidget {
  SelectDiscoCompanyScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController ikejaElectricValueController = TextEditingController();

  TextEditingController ekoElectricValueController = TextEditingController();

  TextEditingController abujaElectricValueController = TextEditingController();

  TextEditingController enuguElectricValueController = TextEditingController();

  TextEditingController imageFourController = TextEditingController();

  TextEditingController imageSixController = TextEditingController();

  TextEditingController imageSevenController = TextEditingController();

  TextEditingController beninElectricValueController = TextEditingController();

  TextEditingController imageTwelveController = TextEditingController();

  TextEditingController yolaElectricValueController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 14.v),
                      CustomSearchView(
                          controller: searchController, hintText: "Search"),
                      SizedBox(height: 32.v),
                      _buildIkejaElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildEkoElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildAbujaElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildEnuguElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildImageFour(context),
                      SizedBox(height: 12.v),
                      _buildImageSix(context),
                      SizedBox(height: 12.v),
                      _buildImageSeven(context),
                      SizedBox(height: 12.v),
                      _buildBeninElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildImageTwelve(context),
                      SizedBox(height: 12.v),
                      _buildYolaElectricValue(context),
                      SizedBox(height: 12.v),
                      _buildFrame(context)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildIkejaElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: ikejaElectricValueController,
        hintText: "Ikeja Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildEkoElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: ekoElectricValueController,
        hintText: "Eko Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildAbujaElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: abujaElectricValueController,
        hintText: "Abuja Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildEnuguElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: enuguElectricValueController,
        hintText: "Enugu Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildImageFour(BuildContext context) {
    return CustomTextFormField(
        controller: imageFourController,
        hintText: "Kano Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildImageSix(BuildContext context) {
    return CustomTextFormField(
        controller: imageSixController,
        hintText: "PortHarcourt Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildImageSeven(BuildContext context) {
    return CustomTextFormField(
        controller: imageSevenController,
        hintText: "Ibadan Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildBeninElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: beninElectricValueController,
        hintText: "Benin Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildImageTwelve(BuildContext context) {
    return CustomTextFormField(
        controller: imageTwelveController,
        hintText: "Kaduna Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildYolaElectricValue(BuildContext context) {
    return CustomTextFormField(
        controller: yolaElectricValueController,
        hintText: "Yola Electric",
        hintStyle: CustomTextStyles.bodySmall12,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(12.h, 12.v, 8.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h)),
        prefixConstraints: BoxConstraints(maxHeight: 43.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(11.h),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage1, height: 19.v, width: 28.h),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("Jos Electric", style: CustomTextStyles.bodySmall12))
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
