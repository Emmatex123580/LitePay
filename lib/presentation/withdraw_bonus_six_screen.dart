import 'package:flutter/material.dart';
import '../core/app_export.dart';

class WithdrawBonusSixScreen extends StatelessWidget {
  const WithdrawBonusSixScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 41.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                        Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant
                                      .imgArrowLeftOnprimarycontainer,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(bottom: 2.v),
                                  onTap: () {
                                    onTapImgArrowLeft(context);
                                  }),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 107.h, top: 2.v),
                                  child: Text("Pricing",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1))
                            ])),
                        SizedBox(height: 27.v),
                        _buildServices(context),
                        SizedBox(height: 30.v),
                        Padding(
                            padding: EdgeInsets.only(right: 49.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 42.v),
                        Padding(
                            padding: EdgeInsets.only(right: 49.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 42.v),
                        Padding(
                            padding: EdgeInsets.only(left: 6.h, right: 42.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 42.v),
                        Padding(
                            padding: EdgeInsets.only(right: 49.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 54.v),
                        _buildFrame5(context),
                        SizedBox(height: 65.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 42.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 65.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 42.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 65.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 42.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%")),
                        SizedBox(height: 77.v),
                        Padding(
                            padding: EdgeInsets.only(left: 7.h, right: 42.h),
                            child: _buildFrame(context,
                                ninetyEight: "98%",
                                ninetyEight1: "98%",
                                ninetySeven: "97%",
                                ninetySeven1: "97%"))
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildServices(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 11.v),
              child: Text("Services",
                  style: CustomTextStyles.titleSmallPurpleA200)),
          Spacer(flex: 30),
          SizedBox(
              width: 31.h,
              child: Text("Smart\nEarner",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallPurpleA200_1)),
          Spacer(flex: 23),
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 12.v),
              child: Text("Affilliate",
                  style: CustomTextStyles.titleSmallPurpleA200_1)),
          Spacer(flex: 23),
          Padding(
              padding: EdgeInsets.only(top: 11.v, bottom: 9.v),
              child: Text("TopUser",
                  style: CustomTextStyles.titleSmallPurpleA200_1)),
          Spacer(flex: 23),
          Padding(
              padding: EdgeInsets.only(top: 9.v, right: 24.h, bottom: 11.v),
              child: Text("API User",
                  style: CustomTextStyles.titleSmallPurpleA200_1))
        ])));
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h, right: 46.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("98%", style: theme.textTheme.bodyMedium),
          Text("98%", style: theme.textTheme.bodyMedium),
          Text("97%", style: theme.textTheme.bodyMedium),
          Text("97%", style: theme.textTheme.bodyMedium)
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String ninetyEight,
    required String ninetyEight1,
    required String ninetySeven,
    required String ninetySeven1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(ninetyEight,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1))),
      Text(ninetyEight1,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1))),
      Text(ninetySeven,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1))),
      Text(ninetySeven1,
          style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.onPrimaryContainer.withOpacity(1)))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
