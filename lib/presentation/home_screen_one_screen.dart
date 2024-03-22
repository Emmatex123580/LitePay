import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_icon_button.dart';

class HomeScreenOneScreen extends StatefulWidget {
  HomeScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreenOneScreen> createState() => _HomeScreenOneScreenState();
}

class _HomeScreenOneScreenState extends State<HomeScreenOneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHomeScreenRow(context),
              SizedBox(height: 29.v),
              _buildTransactionHistoryRow(context),
              SizedBox(height: 42.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "What task would you like to perform?",
                  style: theme.textTheme.labelMedium,
                ),
              ),
              SizedBox(height: 11.v),
              _buildServicesRow(context),
              SizedBox(height: 15.v),
              _buildFrame(context),
              SizedBox(height: 60.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
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
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
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
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Row(
                  children: [
                    CustomIconButton(
                      height: 44.adaptSize,
                      width: 44.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillPurple,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgClarityTalkBubblesLine,
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
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeScreenRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
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
          SizedBox(
            height: 25.adaptSize,
            width: 25.adaptSize,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPhBellThin,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 12.v,
                    width: 9.h,
                    margin: EdgeInsets.only(right: 5.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 9.adaptSize,
                            width: 9.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.deepOrangeA700,
                              borderRadius: BorderRadius.circular(
                                4.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "3",
                            style: CustomTextStyles.bodySmallOnPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionHistoryRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildBonusBalanceColumn(
                context,
                bonusBalance: "Wallet Balance",
                password: "N *****",
              ),
              _buildBonusBalanceColumn(
                context,
                bonusBalance: "Bonus Balance",
                password: "N *****",
              ),
            ],
          ),
          SizedBox(height: 32.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      decoration: AppDecoration.outlineOnPrimary,
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
                      decoration: AppDecoration.outlineOnPrimary,
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
                      decoration: AppDecoration.outlineOnPrimary,
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
  Widget _buildServicesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
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
          _buildElectricityColumn(
            context,
            electricity: "Electricity",
          ),
          _buildCableSubColumn(
            context,
            cableSub: "Cable Sub",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 3.h,
      ),
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
          _buildElectricityColumn(
            context,
            electricity: "Electricity",
          ),
          _buildCableSubColumn(
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
  Widget _buildBonusBalanceColumn(
    BuildContext context, {
    required String bonusBalance,
    required String password,
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
                      text: " *****",
                      style: CustomTextStyles.labelLargeffffffff,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgEyesClosedOnprimary,
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
  Widget _buildElectricityColumn(
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
  Widget _buildCableSubColumn(
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
