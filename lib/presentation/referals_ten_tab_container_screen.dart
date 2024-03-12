import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'referals_nine_page.dart';
import 'referals_ten_page.dart';

class ReferalsTenTabContainerScreen extends StatefulWidget {
  const ReferalsTenTabContainerScreen({Key? key}) : super(key: key);

  @override
  ReferalsTenTabContainerScreenState createState() =>
      ReferalsTenTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ReferalsTenTabContainerScreenState
    extends State<ReferalsTenTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 41.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20.h),
                      onTap: () {
                        onTapImgArrowLeft(context);
                      }),
                  SizedBox(height: 35.v),
                  _buildTabview(context),
                  SizedBox(
                      height: 611.v,
                      child: TabBarView(
                          controller: tabviewController,
                          children: [ReferalsTenPage(), ReferalsNinePage()]))
                ]))));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 44.v,
        width: 310.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.purpleA200,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: appTheme.purpleA200, width: 1.h))),
            tabs: [
              Tab(child: Text("Change PIN")),
              Tab(child: Text("Change PIN"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
