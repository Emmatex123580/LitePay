import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DataTwoScreen extends StatelessWidget {
  DataTwoScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  TextEditingController searchController = TextEditingController();

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
                        height: 766.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.h, top: 26.v, right: 20.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
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
                                                  child: Text("Buy Data Bundle",
                                                      style: theme.textTheme
                                                          .titleSmall))
                                            ])),
                                        SizedBox(height: 54.v),
                                        CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize)),
                                            hintText: "Airtel",
                                            items: dropdownItemList,
                                            onChanged: (value) {}),
                                        SizedBox(height: 24.v),
                                        CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize)),
                                            hintText: "SME",
                                            hintStyle:
                                                CustomTextStyles.bodySmall12,
                                            items: dropdownItemList1,
                                            onChanged: (value) {}),
                                        SizedBox(height: 24.v),
                                        CustomDropDown(
                                            icon: Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 30.h,
                                                    vertical: 13.v),
                                                child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgArrowdown,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize)),
                                            hintText: "Select Plan",
                                            items: dropdownItemList2,
                                            onChanged: (value) {}),
                                        SizedBox(height: 24.v),
                                        _buildFrameRow(context),
                                        SizedBox(height: 54.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 87.h),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                          height: 14.v,
                                                          width: 16.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 9.v,
                                                                  bottom: 11.v),
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .primary,
                                                                  width: 1.h))),
                                                      Expanded(
                                                          child: Container(
                                                              width: 195.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          21.h),
                                                              child: Text(
                                                                  "Bypass number validator for ported number",
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: CustomTextStyles
                                                                      .bodySmall11)))
                                                    ]))),
                                        SizedBox(height: 42.v),
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 105.h),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 26.h,
                                                vertical: 7.v),
                                            decoration: AppDecoration
                                                .outlineOnPrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder19),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  SizedBox(height: 2.v),
                                                  Text("Buy Data",
                                                      style: theme
                                                          .textTheme.labelLarge)
                                                ]))
                                      ]))),
                          Opacity(
                              opacity: 0.4,
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: 756.v,
                                      width: double.maxFinite,
                                      decoration: BoxDecoration(
                                          color: theme.colorScheme
                                              .onPrimaryContainer)))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 13.v),
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMaterialSymbolRedA70024x24,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize),
                                        SizedBox(height: 11.v),
                                        CustomSearchView(
                                            controller: searchController,
                                            hintText: "Search"),
                                        SizedBox(height: 33.v),
                                        _buildFrameColumn(context),
                                        SizedBox(height: 20.v),
                                        _buildFrameColumn1(context),
                                        SizedBox(height: 20.v),
                                        _buildFrameColumn2(context),
                                        SizedBox(height: 20.v),
                                        _buildFrameColumn3(context),
                                        SizedBox(height: 20.v),
                                        _buildFrameColumn4(context),
                                        SizedBox(height: 20.v),
                                        _buildFrameColumn5(context),
                                        SizedBox(height: 23.v)
                                      ])))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
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
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "500.0MB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N140/30 days",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildFrameColumn1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 73.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "1.0GB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N270/30 days",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildFrameColumn2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 70.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "2.0GB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N540/30 days",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildFrameColumn3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 72.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "3.0GB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N810/30 days",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildFrameColumn4(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "5.0GB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N1350/30 days",
                        style: theme.textTheme.titleMedium!
                            .copyWith(decoration: TextDecoration.lineThrough))
                  ]),
                  textAlign: TextAlign.left)
            ]));
  }

  /// Section Widget
  Widget _buildFrameColumn5(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 63.h, vertical: 6.v),
        decoration: AppDecoration.purple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 1.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "10.0GB - ", style: theme.textTheme.titleMedium),
                    TextSpan(
                        text: "N2700/30 days",
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
