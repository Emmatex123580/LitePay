import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:litepay/core/app_export.dart';


//This function calls the Fading Progress Indicator 
void InvalidMeter(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Center(
          child: Container(
            height: 40.v,
            width: 171.h,
            child: Center(
              child: Text(
                "Invalid meter number", 
                style: TextStyle(color:Colors.white, fontSize: 14.adaptSize)
              )
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(17)
            ),
          ),
        )
      );
    },
  );
}
