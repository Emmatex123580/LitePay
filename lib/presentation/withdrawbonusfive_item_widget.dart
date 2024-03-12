import 'package:flutter/material.dart';
import '../core/app_export.dart';

// ignore: must_be_immutable
class WithdrawbonusfiveItemWidget extends StatelessWidget {
  const WithdrawbonusfiveItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Padding(
        padding: EdgeInsets.only(
          top: 8.v,
          bottom: 12.v,
        ),
        child: Text(
          "Services",
          style: CustomTextStyles.titleSmallPurpleA200,
        ),
      ),
    );
  }
}
