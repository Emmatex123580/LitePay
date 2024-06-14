import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:litepay/core/app_export.dart';

Widget CustomContainer(
  {
    String? text,
    VoidCallback? onTap,
    Widget? icon,
    double? width,
    double? height
  }
) {
  return Column(
    children: [
      InkWell(
        child: Container(
          padding: EdgeInsets.all(5),
          width: width == null ? 32.adaptSize : width,
          height: height == null ? 32.adaptSize : height,
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