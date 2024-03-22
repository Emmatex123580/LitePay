import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.black,
          width: 200,
          child: ListView(
            children: [
              ListTile()
            ]
          )
        ),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 22.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHomeRow(context),
                SizedBox(height: 29.v),
                _buildTransactionRow(context),
                SizedBox(height: 42.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "What task would you like to perform?",
                    style: theme.textTheme.labelMedium,
                  ),
                ),
                SizedBox(height: 11.v),
                _buildTaskRow(context),
                SizedBox(height: 15.v),
                _buildServiceRow(context),
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
                SizedBox(height: 42.v),
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
                SizedBox(height: 43.v),
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
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTransactionRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.h),
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
                _buildBalanceColumn(
                  context,
                  bonusBalance: "Wallet Balance",
                  nCounter: "N 0.0",
                ),
                _buildBalanceColumn(
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
                      decoration: AppDecoration.outlineOnPrimary,
                      child: Center(
                        child: IconButton(
                          onPressed: () {
                            // TODO implement an action
                          },
                          icon: Icon(
                            Icons.add_card_outlined,
                            color: Colors.white,
                            size: 10.0,
                          ),
                        ),
                      )
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
                      padding: EdgeInsets.all(2.0),
                      decoration: AppDecoration.outlineOnPrimary,
                      child: Center(
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: const Color.fromARGB(219, 255, 255, 255),
                          size: 10.0,
                        ),
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 1.h,
                        vertical: 2.v
                      ),
                      decoration: AppDecoration.outlineOnPrimary,
                      child: Center(
                        child: Icon(
                            Icons.history_outlined,
                            size: 10.0,
                            color: Colors.white,
                          ),
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
  


  }
  /// Section Widget
  Widget _buildTaskRow(BuildContext context) {
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
                margin: EdgeInsets.all(1.0),
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
            dynamicProperty2: "Electricity",
          ),
          _buildCableColumn(
            context,
            cableSub: "Cable Sub",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildServiceRow(BuildContext context) {
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
            dynamicProperty2: "Electricity",
          ),
          _buildCableColumn(
            context,
            cableSub: "Cable Sub",
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildBalanceColumn(
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
  Widget _buildElectricityColumn(
    BuildContext context, {
    required String dynamicProperty2,
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
          dynamicProperty2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildCableColumn(
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

