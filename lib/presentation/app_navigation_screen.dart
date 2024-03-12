import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome screen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome screen Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreenTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Welcome screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.welcomeScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign in Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Android Large - Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.androidLargeElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "sign up Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home screen - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home screen One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.notificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "wallet summary",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.walletSummaryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transaction History",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transactionHistoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Transfer",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.transferScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Airtime",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.airtimeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Data Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dataThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Data Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dataTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Electricity Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.electricityTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select disco company",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectDiscoCompanyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Meter type",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.meterTypeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Electricity One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.electricityOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Electricity",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.electricityScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Successful Elect pay",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.successfulElectPayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CABLE PAY",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.cablePayScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Select cable",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.selectCableScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "betting One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bettingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "betting",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bettingScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Education pin Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.educationPinSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "home screen Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homeScreenThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UPGRADE Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.upgradeTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "UPGRADE Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.upgradeThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Withdraw Bonus Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.withdrawBonusThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Referals",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "referals Ten - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.referalsTenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "About litepay",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.aboutLitepayScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
