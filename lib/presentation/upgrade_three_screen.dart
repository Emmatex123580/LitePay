import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_icon_button.dart';

class UpgradeThreeScreen extends StatelessWidget {
  UpgradeThreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 697.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFrame3(context),
                      SizedBox(height: 29.v),
                      _buildFrame6(context),
                      SizedBox(height: 42.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "What task would you like to perform?",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildFrame9(context),
                      SizedBox(height: 15.v),
                      _buildFrame12(context),
                      SizedBox(height: 60.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillPurple,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgMaterialSymbol,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 24.h,
                                top: 6.v,
                                bottom: 4.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Upgrade",
                                    style: CustomTextStyles
                                        .labelLargeOnPrimaryContainerBold,
                                  ),
                                  Text(
                                    "Upgrade to Affiliate or Top User",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 42.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          right: 76.h,
                        ),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillPurple,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUilMoneyWithdraw,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 24.h,
                                  top: 4.v,
                                  bottom: 5.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Withdraw bonus",
                                      style: CustomTextStyles
                                          .labelLargeOnPrimaryContainerBold,
                                    ),
                                    Text(
                                      "Withdraw to wallet or bank account.",
                                      style: theme.textTheme.bodySmall,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 43.v),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 44.adaptSize,
                              width: 44.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillPurple,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgClarityTalkBubblesLine,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 24.h,
                                top: 11.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lodge a complaint",
                                    style: CustomTextStyles
                                        .labelLargeOnPrimaryContainerBold,
                                  ),
                                  Text(
                                    "(What’sapp link)",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 135.h,
                    vertical: 276.v,
                  ),
                  decoration: AppDecoration.black,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgLoader,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLists,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "Home",
            style: theme.textTheme.titleSmall,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPhBellThin,
          height: 25.adaptSize,
          width: 25.adaptSize,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 4.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 7.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFrame(
                  context,
                  bonusBalance: "Wallet Balance",
                  nCounter: "N 0.0",
                ),
                _buildFrame(
                  context,
                  bonusBalance: "Bonus Balance",
                  nCounter: "N 0.0",
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.outlineOnPrimary2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCalculator,
                        height: 11.v,
                        width: 13.h,
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Add Money",
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 1.h,
                        vertical: 2.v,
                      ),
                      decoration: AppDecoration.outlineOnPrimary2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgReply,
                        height: 10.v,
                        width: 12.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      "Wallet summary",
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      padding: EdgeInsets.all(2.h),
                      decoration: AppDecoration.outlineOnPrimary2,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    Text(
                      "Transaction History",
                      style: CustomTextStyles.bodySmallOnPrimary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame9(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "Airtime",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: appTheme.purple10001,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.symmetric(
                    horizontal: 7.h,
                    vertical: 5.v,
                  ),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMinimize,
                        height: 13.v,
                        width: 8.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgMingcuteTransferLine,
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "Data",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          _buildFrame1(
            context,
            electricity: "Electricity",
          ),
          _buildFrame2(
            context,
            cableSub: "Cable Sub",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame12(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CustomIconButton(
                height: 22.adaptSize,
                width: 22.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgPhSoccerBallLight,
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                "Betting",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          Column(
            children: [
              CustomIconButton(
                height: 22.adaptSize,
                width: 22.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgFluentMdl2Education,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "Education PIN",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          _buildFrame1(
            context,
            electricity: "Electricity",
          ),
          _buildFrame2(
            context,
            cableSub: "Cable Sub",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String bonusBalance,
    required String nCounter,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bonusBalance,
          style: CustomTextStyles.bodySmallOnPrimary.copyWith(
            color: theme.colorScheme.onPrimary,
          ),
        ),
        SizedBox(height: 1.v),
        SizedBox(
          width: 83.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "N",
                      style: CustomTextStyles.labelLargeffffffff.copyWith(
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    TextSpan(
                      text: " 0.0",
                      style: CustomTextStyles.labelLargeffffffff,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPhEyeThinOnprimary,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(top: 4.v),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String electricity,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 22.adaptSize,
          width: 22.adaptSize,
          padding: EdgeInsets.all(5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgHealthiconsEle,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          electricity,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame2(
    BuildContext context, {
    required String cableSub,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 22.adaptSize,
          width: 22.adaptSize,
          padding: EdgeInsets.all(5.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgStar,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          cableSub,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
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
}
