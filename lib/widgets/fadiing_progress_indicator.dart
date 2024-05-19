import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:litepay/core/app_export.dart';


//This function calls the Fading Progress Indicator 
void fadingCircularProgressIndicator(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => Center(
      child:  SpinKitFadingCircle(
        color:  Color(0XFF9B03D0),
        size: 50.0.adaptSize,
        duration: Duration(seconds: 5)
      ),
    )
  );
}