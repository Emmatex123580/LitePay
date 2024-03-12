import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_search_view.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelectCableScreen extends StatelessWidget {
  SelectCableScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController mTNController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 15.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeft,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 22.v),
                      CustomSearchView(
                          controller: searchController, hintText: "Search"),
                      SizedBox(height: 33.v),
                      _buildSelectCableFrame1(context),
                      SizedBox(height: 20.v),
                      _buildSelectCableFrame2(context),
                      SizedBox(height: 20.v),
                      CustomTextFormField(
                          controller: mTNController,
                          hintText: "GOtv Smallie - Quarterly - N3450",
                          hintStyle:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1,
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 8.v),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlinePrimaryTL10),
                      SizedBox(height: 20.v),
                      _buildSelectCableFrame3(context),
                      SizedBox(height: 20.v),
                      _buildSelectCableFrame4(context),
                      SizedBox(height: 20.v),
                      _buildSelectCableFrame5(context),
                      SizedBox(height: 20.v),
                      _buildSelectCableFrame6(context),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildSelectCableFrame1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 38.h, vertical: 5.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "GOtv smallie-Monthly - ",
                        style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N1300",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildSelectCableFrame2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 83.h, vertical: 5.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "GOtv Jinja - ",
                        style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N2700",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildSelectCableFrame3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 86.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "GOtv Jolli - ", style: theme.textTheme.titleMedium),
              TextSpan(
                  text: "N3950",
                  style: theme.textTheme.titleMedium!
                      .copyWith(decoration: TextDecoration.lineThrough))
            ]),
            textAlign: TextAlign.left));
  }

  /// Section Widget
  Widget _buildSelectCableFrame4(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 85.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: RichText(
            text: TextSpan(children: [
              TextSpan(text: "GOtv Max - ", style: theme.textTheme.titleMedium),
              TextSpan(
                  text: "N5700 ",
                  style: theme.textTheme.titleMedium!
                      .copyWith(decoration: TextDecoration.lineThrough))
            ]),
            textAlign: TextAlign.left));
  }

  /// Section Widget
  Widget _buildSelectCableFrame5(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 4.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 4.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "GOtv Supa - Monthly - ",
                        style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N7600",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildSelectCableFrame6(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 5.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "GOtv Smallie - Yearly - ",
                        style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N10200",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
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
