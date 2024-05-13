import 'package:flutter/material.dart';
import 'package:litepay/theme/custom_button_style.dart';
import 'package:litepay/theme/theme_helper.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

//Dialog box that appears when payment is unsuccssful
  dynamic PaymentUnsuccessful(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white.withOpacity(0.0),
          child: Container(
            height: screenHeight * 0.7,
            width: screenWidth * 0.98,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
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
                ),
                SizedBox(height: screenHeight * 0.15),
                Expanded(
                  child: Container(
                    width: screenWidth * 0.98,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: 60, 
                          child: Icon(
                            Icons.close,
                            size: 30,
                            color: Color(0XFFF90808),
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0XFFF90808),
                              width: 2.0,
                            )
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Text("Failed to process payment", style: theme.textTheme.displayMedium),
                        SizedBox(height: screenHeight * 0.01),
                        Text("Error in processing payment, please try again", style: theme.textTheme.bodySmall),
                        SizedBox(height: screenHeight * 0.045),
                        CustomElevatedButton(
                          text: "OK",
                          width: screenWidth * 0.6,
                          buttonStyle: CustomButtonStyles.fillErrorContainer,
                          buttonTextStyle: TextStyle(fontSize: 16),
                          onPressed: () => Navigator.of(context).pop(),
                          decoration: BoxDecoration(
                            color: Color(0XFFF90808),
                            borderRadius: BorderRadius.circular(17)
                          )
                        )
                      ]),
                    ),
                  ),
                SizedBox(height: screenHeight * 0.2)
              ]
            )
          ),
        );
      },
    );
  }