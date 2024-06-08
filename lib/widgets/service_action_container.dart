import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:litepay/core/app_export.dart';

Widget CustomContainer(
  {
    String? text,
    VoidCallback? onTap,
    Widget? icon
  }
) {
  return Column(
    children: [
      InkWell(
        child: Container(
          padding: EdgeInsets.all(5),
          width: 24.5.adaptSize,
          height: 24.5.adaptSize,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color:Color(0XFFE8BFF7),
            border: Border.all(
              color: Color(0XFF9B03D0),
            )
          ),
          child: icon
        )
      ),
      SizedBox(height: 2.v,),
      Text(
        text as String,
        style: theme.textTheme.bodySmall,
      )
    ],
  );
}