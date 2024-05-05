import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/theme/theme_helper.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

class AirtimeFundingPayment extends StatefulWidget {
  const AirtimeFundingPayment({super.key});

  @override
  State<AirtimeFundingPayment> createState() => _AirtimeFundingPaymentState();
}

class _AirtimeFundingPaymentState extends State<AirtimeFundingPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Airtime Funding Payment",
            style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w500)
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: ()=>Navigator.pop(context)
          ),
          elevation: 0.0, 
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(21.0),
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Kindly transfer the sum of ",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 11,
                      ), children: <TextSpan>[
                        TextSpan(
                          text: "\u20A6500",
                          style: TextStyle(fontWeight: FontWeight.w600)
                        ),
                        TextSpan(
                          text: " to the phone Number shown below"
                        ),
                      ]
                    ),
                  ),

                  SizedBox(height: 15.v),

                  Text("08092147742", style: theme.textTheme.displayMedium),

                  SizedBox(height: 20.v),

                  Container(
                    width: 320.h,
                    padding: EdgeInsets.fromLTRB(5.h, 10.v, 5.h, 10.v),
                    decoration:BoxDecoration(
                      color: Color(0xFFD250FF)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: "Please Note: ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontSize: 11,
                              fontWeight: FontWeight.w600
                            ),
                            children: [
                              TextSpan(
                                text: "Due to certain restrictions we cannot autoamtically deduct airtime, you have to manually transfer the number above, Thank you",
                                style: TextStyle(fontWeight: FontWeight.normal)
                              )
                            ]
                          )
                        )
                      ]
                    )
                  ),

                  SizedBox(height: 28.v),

                  Container(
                    width: 320.h,
                    padding: EdgeInsets.fromLTRB(5.h, 10.v, 5.h, 10.v),
                    decoration:BoxDecoration(
                      color: Color(0xFFD250FF)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "How to transfer airtime on MTN",
                          style: TextStyle(
                            fontFamily: "Poppins", 
                            fontSize: 11, 
                            color: Colors.white, 
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Text(
                          "MTN transfer - Default Pin: 0000",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 11, color: Colors.white)
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "To create a new PIN, Dial: *600*00000*NEWPIN*NEWPIN#",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 11, color: Colors.white)
                        ),
                        Text(
                          "E.g *600*00000*5555*5555#",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 11, color: Colors.white)
                        ),
                        SizedBox(height: 15.v),
                        Text(
                          "Dial *600*08039627867*500*5555# to send the airtime, change 5555 to your pin if you already have pin",
                          style: TextStyle(fontFamily: "Poppins", fontSize: 11, color: Colors.white)
                        )
                      ]
                    )
                  ),

                  SizedBox(height: 28.v),

                  Container(
                    padding: EdgeInsets.fromLTRB(5.h, 10.v, 5.h, 10.v),
                    width: 320.h,
                    color: Color(0XFFE8BFF7),
                    child: Center(
                      child: Text(
                        "Only click to submit other you have transferred the airtime to avoid your account being banned",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 11)
                      ),
                    )
                  ),

                  SizedBox(height: 72.v),

                  CustomElevatedButton(
                    text: "Submit",
                    onPressed: () {
                      //Add actions to be implemented
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: _confirmation(context)
                          );
                        },
                      );
                    },
                  )
                ]
              ),
            )
          )
        )
      )
    );
  }

  //Dialog screent o confirm or cancel payment
  Widget _confirmation(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(18, 27, 18, 18),
      height: 287,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Confirmation",
              style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w700)
            ),
            SizedBox(height: 12),
            Text(
              "Are you sure you have transferred the airtime",
              style: TextStyle(fontFamily: "Poppins", fontSize: 11, fontWeight: FontWeight.w400)
            ),
            SizedBox(height: 15),
            Text(
              "NOTE: if you click submit without having done the transfer, your account will be banned",
              style: TextStyle(
                fontFamily: "Poppins", 
                fontSize: 11, 
                color: Color(0xFFFA0808), 
                fontWeight: FontWeight.w400
              )
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomElevatedButton(
                  text: "cancel",
                  width:88,
                  height: 20,
                  onPressed: () => Navigator.of(context).pop(),
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                ),
                CustomElevatedButton(
                  text: "submit", 
                  width: 88,
                  height: 20,
                  onPressed: () {
                    Navigator.of(context).pop();
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: _successful(context) 
                          
                      );
                    },
                  );
                  },
                  buttonStyle: CustomButtonStyles.fillGreen,
                )
              ]
            )
          ]
        )
      )
    );
  }

  // Dialog box when transaction is succesful
  Widget _successful(BuildContext context) {
    return Container(
       padding: EdgeInsets.fromLTRB(18, 18, 18, 18),
      height: 287,
      width: 220,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.check,
            size: 48,
            color: Color.fromARGB(255, 37, 229, 44),
          ),
          Text(
            "Confirmation",
            style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w700)
          ),
          Text("Your transfer has been confirmed", style: theme.textTheme.bodySmall),
          CustomElevatedButton(
            text: "Ok",
            buttonTextStyle: TextStyle(fontSize: 16),
            onPressed: () {
             Navigator.of(context).pop();
            }
            
          )
        ]
      )
    );
  }
  
}