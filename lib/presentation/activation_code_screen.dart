import 'package:flutter/material.dart';
import 'package:litepay/presentation/activation_code_OneScreen.dart';
import '../core/app_export.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class ActivationCodeScreen extends StatefulWidget {
  const ActivationCodeScreen({Key? key})
      : super(
          key: key,
        );
  @override
  State<ActivationCodeScreen> createState() => _ActivationCodeScreenState();
}

class _ActivationCodeScreenState extends State<ActivationCodeScreen> {
  String Code = "1234";
  TextEditingController _pincodeController = TextEditingController();

  void dispose() {
    _pincodeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.07),
              Text(
                "Welcome",
                style: TextStyle(
                  color:Color(0XFF9B03D0),
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                  fontSize: 30
                ),
              ),
              SizedBox(
                width: 265.h,
                child: Text(
                  "Enter activation code that was sent to \nabigailnwadike@gmail.com",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
              SizedBox(height: screenHeight * 0.08),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 21.h,
                ),
                child: pinCodeTextFieldWidget
              ),
              SizedBox(height: screenHeight * 0.55),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {}, //TODO: Implement an action
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10, top: 10, right: 20, left: 20),
                        child: Text(
                          "Logout",
                          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all( width: 1.0),
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async{
                        
                       
                         
                      }, //TODO: Implement an action
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10, top: 10, right: 20, left: 20),
                        child: Text(
                          "Activate",
                          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
                        ),
                      ),
                    ),
                    
                    
                  ]
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }

  

  //Pin Code display
  Widget get pinCodeTextFieldWidget => PinCodeTextField(
    appContext: context,
    controller: _pincodeController,
    length: 4,
    autoFocus: true,
    keyboardType: TextInputType.number,
    inputFormatters: [
      FilteringTextInputFormatter.digitsOnly,
    ],
    pinTheme: PinTheme(
      fieldHeight: 46.h,
      fieldWidth: 46.h,
      shape: PinCodeFieldShape.box,
      inactiveColor: appTheme.purpleA100,
      activeColor: appTheme.purpleA100,
    ),

  );
}



