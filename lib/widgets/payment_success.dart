import 'package:flutter/material.dart';
import 'package:litepay/main.dart';
import 'package:litepay/theme/theme_helper.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

//Dialog box that appears when payment process is validated successful
  dynamic PaymentSuccessful(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  showDialog(
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
                        Icon(
                        Icons.check,
                          size: 48,
                          color: Color.fromARGB(255, 37, 229, 44),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Text("Success", style: theme.textTheme.displayMedium),
                        SizedBox(height: screenHeight * 0.01),
                        Text("Payment processed successful", style: theme.textTheme.bodySmall),
                        SizedBox(height: screenHeight * 0.045),
                        CustomElevatedButton(
                          text: "Back to Home",
                          width: screenWidth * 0.6,
                          buttonTextStyle: TextStyle(fontSize: 16),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );
                          }
                          
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