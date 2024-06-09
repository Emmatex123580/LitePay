import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/presentation/airtime_funding.dart';
import 'package:litepay/presentation/fund_wallet_atm_monnify.dart';
import 'package:litepay/presentation/fund_wallet_atm_paystack.dart';
import 'package:litepay/presentation/fund_wallet_automated_bank.dart';
import 'package:litepay/presentation/manual_bank.dart';
import 'package:litepay/theme/custom_text_style.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';

// This function returns the addMoney bottom sheet in the home screen
void addMoneyBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: Colors.white,
    context: context,
    isDismissible: true,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: 100.v,
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
                  MaterialPageRoute(builder: (context) => FundWalletAtmPaystack()),
                );
              },
              height: 41.v,
              text: "Fund wallet ATM Paystack",
              buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
              buttonTextStyle: theme.textTheme.bodyLarge!,
            ),
            
          ],
        ),
      );
    },
  );
}