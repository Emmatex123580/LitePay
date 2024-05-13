import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:litepay/presentation/Electricity.dart';
import 'package:litepay/presentation/airtime.dart';
import 'package:litepay/presentation/airtime_funding.dart';
import 'package:litepay/presentation/buy_data_bundle.dart';
import 'package:litepay/presentation/cable_pay.dart';
import 'package:litepay/presentation/fund_wallet_atm_monnify.dart';
import 'package:litepay/presentation/fund_wallet_atm_paystack.dart';
import 'package:litepay/presentation/fund_wallet_automated_bank.dart';
import 'package:litepay/presentation/manual_bank.dart';
import 'package:litepay/presentation/transaction_history.dart';
import 'package:litepay/presentation/wallet_history.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';
import 'package:litepay/widgets/side_drawer.dart';
import '../core/app_export.dart';
import '../widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.grey,
          backgroundColor: Colors.white,
          title: Text(
            "Home",
            style: theme.textTheme.titleSmall,
          ),
          centerTitle: true,
          actions: [
            CustomImageView(
            imagePath: ImageConstant.imgPhBellThin,
            height: 25.adaptSize,
            width: 25.adaptSize,
            onTap: () {
              // TODO: Implement an action
            },
          ),
          ],
          elevation: 0.0,
        ),

        drawer: BuildDrawer(context), // This widget function is located in the Widget folder

        body: SingleChildScrollView(
          child: Container(
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
                          child:  SvgPicture.asset(
                              'imagePath/img_uil_money_withdraw.svg',
                            width: 30,
                            height: 30,
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
                          child: SvgPicture.asset(
                              'imagePath/img_clarity_talk_bubbles_line.svg',
                            width: 30,
                            height: 30,
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
              )
            ),
          ),
        ),
      ),
    );
  }
  
  // Section Widget
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
                    IconButton(
                      onPressed: () {
                        _addMoneyBottomSheet(context);
                      },
                      icon: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        decoration: AppDecoration.outlineOnPrimary,
                        
                          child: Icon(
                            Icons.add_card_outlined,
                            color: const Color.fromARGB(219, 255, 255, 255),
                            size: 14.0,
                          ),
                        
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
                  IconButton(
                    onPressed: (){
                      //TODO: Implement an action
                       Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>WalletHistory())
                        );
                    },
                      icon: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        padding: EdgeInsets.all(2.0),
                        decoration: AppDecoration.outlineOnPrimary,
                        child: Icon(
                          Icons.account_balance_wallet_outlined,
                          color: const Color.fromARGB(219, 255, 255, 255),
                          size: 14.0,
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
                    IconButton(
                      onPressed: () {
                        //TODO: Implement an  action
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>TransactionHistory())
                        );
                      },
                      icon: Container(
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        padding: EdgeInsets.symmetric(
                          horizontal: 1.h,
                          vertical: 2.v
                        ),
                        decoration: AppDecoration.outlineOnPrimary,
                        child: Icon(
                            Icons.history_outlined,
                            size: 14.0,
                            color: const Color.fromARGB(219, 255, 255, 255),
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
                child: SvgPicture.asset(
                  'imagePath/img_user.svg',
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => Airtime())
                  );
                }, 
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
             CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: SvgPicture.asset(
                  'imagePath/img_mingcute_transfer_line.svg',
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => BuyDataBundle())
                  );
                }, 
              ),
              SizedBox(height: 3.v),
              Text(
                "Data",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
           Column(
            children: [
             CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(5.h),
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: SvgPicture.asset(
                  'imagePath/img_mingcute_transfer_line.svg',
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder:(context) => CablePayScreen())
                  );
                }, 
              ),
              SizedBox(height: 3.v),
              Text(
                "Cable Sub",
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
          _buildPropertyColumn(
            context,
            property: "Mega Data",
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
                child: SvgPicture.asset(
                  'imagePath/img_ph_soccer_ball_light.svg',
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
                child: SvgPicture.asset(
                  'imagePath/img_fluent_contact.svg'
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "Education PIN",
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ElectricityScreen())
                  );
                },
                decoration: IconButtonStyleHelper.outlinePrimary,
                child: SvgPicture.asset(
                  'imagePath/img_fluent_contact.svg'
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "Electricity",
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
                child: SvgPicture.asset(
                  'imagePath/img_fluent_contact.svg'
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                "Join Affiliate",
                style: theme.textTheme.bodySmall,
              ),
            ],
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

// common widget
Widget _buildCableColumn(
  BuildContext context, {
  required String dynamicProperty2,
  }) {
  return Column(
    children: [
      CustomIconButton(
        height: 22.adaptSize,
        width: 22.adaptSize,
        padding: EdgeInsets.all(5.h),
        child: SvgPicture.asset(
          'imagePath/img_star.svg'
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

Widget _buildPropertyColumn(
  BuildContext context, {
  required String property,
}) {
  return Column(
    children: [
      CustomIconButton(
        height: 22.adaptSize,
        width: 22.adaptSize,
        padding: EdgeInsets.all(5.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgMingcuteTransferLine,
        ),
      ),
      SizedBox(height: 3.v),
      Text(
        property,
        style: theme.textTheme.bodySmall!.copyWith(
          color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        ),
      ),
    ],
  );
}


  /// Common widget
  Widget _buildAffiliateColumn(
    BuildContext context, {
    required String property,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 28.adaptSize,
          width: 28.adaptSize,
          padding: EdgeInsets.all(5.h),
          child: SvgPicture.asset(
            'imagePath/img_pepicons_pencil_people.svg'
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          property,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
          ),
        ),
      ],
    );
  }

// This function returns the addMoney bottom sheet in the home screen
void _addMoneyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isDismissible: true,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 400.v,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Payment method",
                    style: CustomTextStyles.titleMediumOnPrimaryContainer,
                  ),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Container(
                      child: Icon(
                        Icons.close,
                        color: Color(0XFFF90808),
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0XFFF90808),
                          width: 1.0,
                        )
                      )
                    ),
                  ),
                ],
              ),
              CustomOutlinedButton( 
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FundWalletAtmMonnify()),
                  );
                },
                height: 41.v,
                text: "Fund wallet ATM Monnify",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              CustomOutlinedButton(
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FundWalletAtmPaystack()),
                  );
                },
                height: 41.v,
                text: "Fund wallet ATM Paystack",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              CustomOutlinedButton(
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ManualBankPayment()),
                  );
                },
                height: 41.v,
                text: "Fund wallet Manual Bank",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              CustomOutlinedButton(
                onPressed:() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FundWalletAutomatedBank()),
                  );
                },
                height: 41.v,
                text: "Fund wallet Automated bank",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
              CustomOutlinedButton(
                 onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AirtimeFunding()),
                  );
                },
                height: 41.v,
                text: "Airtime Funding",
                buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                buttonTextStyle: theme.textTheme.bodyLarge!,
              ),
      
            ],
          ),
        ),
      );
    },
  );
}


 

