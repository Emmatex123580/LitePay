//function that calls bottom sheet when signup is successful
import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/presentation/sign_up_one_screen.dart';

void signUpSuccess(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 20.h, right: 20.h),
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check,
                      size: 100,
                      color: Color.fromARGB(255, 37, 229, 44),
                    ),
                    Text(
                      "Success",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Center(
                        child: Text(
                          "Your registration  was successful, please login now.",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Poppins",
                          ))),
                    Container(
                      height: 20.v,
                      width: 100.h,
                      child: ElevatedButton(
                        child: Text("Ok",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpOneScreen()),
                              (route) => false,
                            );
                      
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 29, 243,
                                36), // Background color of the button
                            foregroundColor: Colors.white, // Text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Button border radius
                            )),
                      ),
                    )
                  ]),
            ),
          );
        });
  }
