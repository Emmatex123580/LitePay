import 'withdrawbonusfive_item_widget.dart';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

class WithdrawBonusFiveScreen extends StatelessWidget {
  const WithdrawBonusFiveScreen({Key? key}) : super(key: key);

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
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
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
                                      padding: EdgeInsets.only(
                                          left: 107.h, top: 2.v),
                                      child: Text("Pricing",
                                          style: CustomTextStyles
                                              .titleMediumOnPrimaryContainer_1))
                                ]))),
                        SizedBox(height: 28.v),
                        _buildWithdrawBonusFive(context),
                        SizedBox(height: 20.v),
                        _buildMTNAIRTIME(context),
                        SizedBox(height: 18.v),
                        _buildGLOAIRTIME(context),
                        SizedBox(height: 18.v),
                        _buildMOBILEAIRTIME(context),
                        SizedBox(height: 19.v),
                        _buildAIRTELAIRTIME(context),
                        SizedBox(height: 18.v),
                        _buildWAECResultChecker(context),
                        SizedBox(height: 19.v),
                        _buildNECOResultChecker(context),
                        SizedBox(height: 19.v),
                        _buildNABTEBResultChecker(context),
                        SizedBox(height: 19.v),
                        _buildNBAISResultChecker(context),
                        SizedBox(height: 17.v),
                        _buildWAECGCEResult(context)
                      ])))
                ]))));
  }

  /// Section Widget
  Widget _buildWithdrawBonusFive(BuildContext context) {
    return SizedBox(
        height: 42.v,
        child: ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 44.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return WithdrawbonusfiveItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildMTNAIRTIME(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "MTN\nAIRTIME",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildGLOAIRTIME(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "GLO\nAIRTIME",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildMOBILEAIRTIME(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "9MOBILE\nAIRTIME",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildAIRTELAIRTIME(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "AIRTEL\nAIRTIME",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildWAECResultChecker(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "WAEC \nResult\nChecker",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildNECOResultChecker(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "NECO\nResult\nChecker",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildNABTEBResultChecker(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "NABTEB\nResult\nChecker",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildNBAISResultChecker(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "NBAIS\nResult\nChecker",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Section Widget
  Widget _buildWAECGCEResult(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 20.h),
        child: IntrinsicWidth(
            child: _buildFrame(context,
                gLOAIRTIME: "WAEC\nGCE\nResult\nChecker",
                ninetyEight: "98%",
                ninetyEight1: "98%",
                ninetySeven: "97%",
                ninetySeven1: "97%")));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String gLOAIRTIME,
    required String ninetyEight,
    required String ninetyEight1,
    required String ninetySeven,
    required String ninetySeven1,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 56.h,
              child: Text(gLOAIRTIME,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))),
          Spacer(flex: 25),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 14.v),
              child: Text(ninetyEight,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))),
          Spacer(flex: 25),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 14.v),
              child: Text(ninetyEight1,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))),
          Spacer(flex: 25),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 14.v),
              child: Text(ninetySeven,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.onPrimaryContainer
                          .withOpacity(1)))),
          Spacer(flex: 25),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 14.v),
              child: Text(ninetySeven1,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1))))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
