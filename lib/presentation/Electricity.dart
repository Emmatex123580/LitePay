import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/presentation/select_disco_company.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';
import 'package:litepay/widgets/fadiing_progress_indicator.dart';
import 'package:litepay/widgets/invalid_metre.dart';
import 'package:litepay/widgets/payment_success.dart';
import 'package:litepay/widgets/valid_metre.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class ElectricityScreen extends StatefulWidget {
  const ElectricityScreen({super.key});

  @override
  State<ElectricityScreen> createState() => _ElectricityScreenState();
}

class _ElectricityScreenState extends State<ElectricityScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _disco_company = TextEditingController();//Controller for the Netwok provideer textfield
  late TextEditingController  meter_type  = TextEditingController(); 
  TextEditingController pinEditingController = TextEditingController();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text(
            "Pay Electricity Bill",
            style: TextStyle(fontSize: 14.adaptSize, fontFamily: "Poppins", fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(19),
          color: Colors.white,
          child:Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 12.v),
                  Text(
                    "Empower Your Payments, Anytime, Anywhere.",
                    style: TextStyle(fontSize: 14.adaptSize, fontFamily: "Poppins", fontWeight: FontWeight.w500),
                  ),

                  SizedBox(height: 24.v),

                  //Holds the textfield for selecting Disco company
                  Container(
                    height: 42.v,
                    width: 320.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Color(0xFFD250FF)
                      )
                    ),
                    child: TextFormField(
                      controller: _disco_company,
                      readOnly:true,
                      validator: (value) {
                        //validate the value typed in the text
                      },
                      decoration: InputDecoration(
                        hintText: (_disco_company.text == "") ? "Select Disco Company" : _disco_company.text,
                        suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            //Call the action and drop down box here
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: ((context) => SelectDiscoCompany()))
                            );  
                          },
                        ),
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: Colors.grey
                        ),
                      ),
                      cursorColor: Colors.black26,
                    )
                  ),
          
                  SizedBox(height: 24.v),
                  
                  //Holds the textfield for amount
                  Container(
                    height: 42.v,
                    width: 320.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Color(0xFFD250FF)
                      )
                    ),
                    child: TextFormField(
                      controller: meter_type,
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: (meter_type.text == "") ? "Meter Type" : meter_type.text,
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            //Call the action and drop down box here
                            _meterTypeBottomSheet(context);
                          },
                        ),
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: Colors.grey
                        ),
                      ),
                      cursorColor: Colors.black26,
                    )
                  ),
          
                  SizedBox(height: 24.v),
          
                  //Holds the textfield for Amount
                  Container(
                    height: 42.v,
                    width: 320.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Color(0xFFD250FF)
                      )
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Meter No.",
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: Colors.grey
                        ),
                      ),
                      cursorColor: Colors.black26,
                    )
                  ),
          
                  SizedBox(height: 24.v),
          
                  Container(
                    height: 42.v,
                    width: 320.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Color(0xFFD250FF)
                      )
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Amount",
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: Colors.grey
                        ),
                      ),
                      cursorColor: Colors.black,
                    )
                  ),
          
                  SizedBox(height: 24.v),

                  Container(
                    height: 42.v,
                    width: 320.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Color(0xFFD250FF)
                      )
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Customer No.",
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400, 
                          fontSize: 12, 
                          color: Colors.grey
                        ),
                      ),
                      cursorColor: Colors.black,
                    )
                  ),
          
                  SizedBox(height: 80.v),
                  
                  CustomElevatedButton(
                    text: "Validate meter",
                    width: 110.h,
                    buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19,
                    onPressed: () async{
                      if(_formKey.currentState!.validate()){
                        //Validate the form
                        fadingCircularProgressIndicator(context);
                        await Future.delayed(Duration(seconds: 3), () {
                          // Remove the fading circular progress indicator after 2 seconds
                          Navigator.of(context).pop(); // Remove the indicator
                        });
                        ValidMeter(context); //adjust the code to call InvalidMeter(context) based on feedback
                        await Future.delayed(Duration(seconds: 3), () {
                          // Remove the fading circular progress indicator after 2 seconds
                          Navigator.of(context).pop(); // Remove the indicator
                        });
                        _pinBottomSheet(context);
                      }
                      else {
                        InvalidMeter(context); // This function is called if the metre number number isinvalid
                      }
                    }, 
                  )
                ]
              ),
            )
          )
        ),
      )
    );
  }
  //Code block for bottom sheet to dial pin on confirmation
  void _pinBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isDismissible: false,
       shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Confirm Transaction",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        pinEditingController = TextEditingController(); //Reassigning controller after been disposed
                      },
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
                  ],
                ),

                SizedBox(height: 24),   
                Text(
                  "You are about to purchase \u20A65000  for electricity",
                  style: TextStyle(fontFamily: "Poppins", fontSize:14, fontWeight: FontWeight.w400)
                ),
                SizedBox(height: 20),
                Text(
                  "Enter PIN to confirm",
                   style: TextStyle(fontFamily: "Poppins", fontSize:15, fontWeight: FontWeight.w600)
                ),
                SizedBox(height: 12),
                Center(
                  child: Container(
                    width: 184.h,
                    padding: EdgeInsets.all(10),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: true,
                      onChanged: (value) {
                        setState(() {
                          currentText = value;
                        });
                      },
                      pinTheme: PinTheme(
                        fieldHeight: 31.v,
                        fieldWidth: 27.h,
                        shape: PinCodeFieldShape.box,
                        inactiveColor: appTheme.purpleA100,
                        activeColor: appTheme.purpleA100,
                      ),
                      keyboardType: TextInputType.none,
                      controller: pinEditingController,
                      onCompleted: (v) {
                        //TODO: validate and perform action when the pin field is completely field
                        Navigator.of(context).pop();
                        pinEditingController = TextEditingController();
                        PaymentSuccessful(context); //Write a condition to call PaymentUnsuccesful if unsuccessful 
                      },
                    ),
                  ),
                ),
              
                Container(
                  width: 248.h,
                  child: buildNumberPad()
                ),
                SizedBox(height: 30.v),
                Text("OR"),
                TextButton(
                  child: Text(
                    "Use Fingerprint",
                    style: CustomTextStyles.titleSmallPrimary15
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                    _FingerPrintSet(context);  //Write condition to either return  this sheet or _FingerPrintNotSet(context) 
                  },
                )
              ]
            )  
          ),
        );
      },
    );      
  }

   //Widget builds the dial pad
  Widget buildNumberPad() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNumberButton(1),
              buildNumberButton(2),
              buildNumberButton(3),
              buildNumberButton(4),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNumberButton(5),
              buildNumberButton(6),
              buildNumberButton(7),
              buildNumberButton(8),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNumberButton(9),
              buildNumberButton(0),
               IconButton(
                onPressed: () {
                  if (pinEditingController.text.isNotEmpty) {
                    pinEditingController.text = pinEditingController.text.substring(0, pinEditingController.text.length - 1);
                  }
                },
                icon: Icon(Icons.backspace_outlined, color: Colors.red, size: 24.adaptSize),
              ),
            ],
          ),
        ],
      ),
    );
  }

   //Buttons on bottom sheet 
  Widget buildNumberButton(int number) {
    return GestureDetector(
      onTap: () {
        String currentValue = pinEditingController.text;
        String newValue = currentValue + number.toString();
        pinEditingController.text = newValue;
        setState(() {
          currentText = newValue;
        });
      },
      child: Container(
        width: 32.h,
        height: 32.v,
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFFE8BFF7),
          shape: BoxShape.circle,
        ),
        child: Text(
          number.toString(),
          style: theme.textTheme.bodyMedium,
        ),
      ),
    );
  }

   //This function calls the bottom when fingerPrint is set on device
  void _FingerPrintSet(BuildContext context)  {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isDismissible: false,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top:10, bottom: 20, left:20, right:20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Confirm Transaction",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        pinEditingController =  TextEditingController();
                      },
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
                  ],
                ),
                Text(
                  "You are about to purchase \u20A65000 for electricity",
                  style: TextStyle(fontFamily: "Poppins", fontSize:14, fontWeight: FontWeight.w400)
                ),
                SizedBox(height: 24.v),
                Icon(Icons.fingerprint, size:30.adaptSize),
                SizedBox(height: 8.v),
                Text(
                  "Use Fingerprint",
                  style: TextStyle(fontFamily: "Poppins", fontSize:12, fontWeight: FontWeight.w600)
                ),
                SizedBox(height: 8.v),
                Text(
                  "OR",
                  style: TextStyle(fontFamily: "Poppins", fontSize:10, fontWeight: FontWeight.w500, color:Color(0xFF9B03D0)),
                ),
                TextButton(
                  child: Text(
                    "Use PIN instead",
                    style: TextStyle(fontFamily: "Poppins", fontSize:12, fontWeight: FontWeight.w600, color: Color(0xFF9B03D0))
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                    pinEditingController = TextEditingController(); //Reassigning the controller to avoid error
                    _pinBottomSheet(context);
                  },
                )
              ]
            )  
          ),
        );
      },
    );      
  }

  //This function return the bottom sheet when fingerprint is not set on device
  //It should be called when fingerprint is not set on device
  void _FingerPrintNotSet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      isDismissible: false,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top:10, bottom: 20, left:20, right:20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Confirm Transaction",
                      style: CustomTextStyles.titleMediumOnPrimaryContainer,
                    ),
                    IconButton(
                      onPressed: () => Navigator.of(context).pop(),
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
                  ],
                ),
                SizedBox(height: 24.v),
                Icon(Icons.fingerprint, size:51.adaptSize),
                SizedBox(height: 24.v),
                RichText(
                  text:TextSpan(
                    text:"Fingerprint not set, ",
                    style: TextStyle(fontFamily: "Poppins", fontSize:14, fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: "Go to settings ",
                        style: TextStyle(
                          fontFamily: "Poppins", 
                          fontSize:14, 
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9B03D0)
                        ),
                        recognizer: TapGestureRecognizer()..onTap = ()  {
                          //  TODO: Implement an action here
                        } 
                      ),
                      TextSpan(
                        text: "to set up your fingerprint"
                      ),
                    ]
                  )
                ),
                SizedBox(height: 24.v),
                TextButton(
                  child: Text(
                    "Use PIN instead",
                    style: CustomTextStyles.titleSmallPrimary15
                  ),
                  onPressed: (){
                    Navigator.of(context).pop();
                    pinEditingController = TextEditingController(); //Reassigning the controller to avoid error
                    _FingerPrintNotSet(context);
                  },
                )

              ]
            )  
          ),
        );
      },
    );      
  }

  //This function calls the bottomSheet to choose meter type
   void _meterTypeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 32.h),
                CustomOutlinedButton(
                  text: "Prepaid",
                  width: 320.h,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                  onPressed: () {
                    meter_type.text = "Prepaid";
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(height: 20.v),
                CustomOutlinedButton(
                  text: "Postpaid",
                  width: 320.h,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                   onPressed: (){
                    meter_type.text = "Postpaid";
                    Navigator.of(context).pop();
                   }
                )
              ],
            )
          )
        );
      },
    );
  }
}


