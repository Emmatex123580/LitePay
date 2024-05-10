import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/main.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Airtime extends StatefulWidget {
  const Airtime({super.key});

  @override
  State<Airtime> createState() => _AirtimeState();
}

class _AirtimeState extends State<Airtime> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController network_provider = TextEditingController();//Controller for the Netwok provideer textfield
  TextEditingController pinEditingController = TextEditingController(); //Controller that holds the pin
  String currentText = "";
  bool _isChecked = false; //Variable for indicating the state of the checkbox
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text(
            "Airtime Top-up",
            style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w500),
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
                  SizedBox(height: 54.v),
                  
                  //Holds the textfield for filling selected Network
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
                      controller: network_provider,
                      validator: (value) {
                        //validate the value typed in the text
                      },
                      decoration: InputDecoration(
                        hintText: "Select Network",
                        suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                              //Call the action and drop down box here
                              _networkBottomSheet(context);
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Airtime Type",
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                         suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            //Call the action and drop down box here
                            _airtimeTypeBottomSheet(context);
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
                      hintText: "Phone No.",
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
                        hintText: "Amount to pay",
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        suffixIcon: SvgPicture.asset("assts/images/img_material_symbol_onprimarycontainer.svg", width: 16,),
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
          
          
                  SizedBox(height: 36.v),
          
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        activeColor:Colors.white,
                        checkColor: Colors.black,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        }
                      ),
                      Flexible(
                        child: Text(
                          "Bypass number validator for parted number",
                          style: TextStyle(fontSize: 12.fSize, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ]
                  ), 
                  SizedBox(height: 100.v),
                  CustomElevatedButton(
                    text: "Buy Airtime",
                    width: 110.h,
                    buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19,
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        //Validate the form
                        _pinBottomSheet(context);
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
                  "You are about to purchase \u20A6500 airtime for 08059941818",
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
                      keyboardType: TextInputType.number,
                      controller: pinEditingController,
                      onCompleted: (v) {
                        //TODO: Performaction with pin
                        Navigator.of(context).pop();
                        _SucccessBottomSheet(context);
                      },
                    ),
                  ),
                ),
              
                Container(
                  width: 248.h,
                  child: buildNumberPad()
                ),
                SizedBox(height: 40.v),
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

  // This function calls the botom sheet to select network provider
  void _networkBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                  text: "MTN",
                  height: 44.v,
                  buttonStyle: CustomButtonStyles.fillAmber,
                  onPressed: () {
                    setState(() {
                      network_provider.text = "MTN";
                      Navigator.of(context).pop();
                    });
                  },
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  text: "Airtel",
                  height: 44.v,
                  buttonStyle: CustomButtonStyles.fillErrorContainer,
                  onPressed: () {
                    setState(() {
                      network_provider.text = "Airtel";
                      Navigator.of(context).pop();
                    });
                  },
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  text: "9Mobile",
                  height: 44.v,
                  buttonStyle: CustomButtonStyles.fillTeal,
                  onPressed: () {
                    setState(() {
                      network_provider.text = "9Mobile";
                      Navigator.of(context).pop();
                    });
                  },
                  
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  text: "Glo",
                  height: 44.v,
                  buttonStyle: CustomButtonStyles.fillGreen,
                  onPressed: () {
                    setState(() {
                      network_provider.text = "Glo";
                      Navigator.of(context).pop();
                    });
                  },
                ),
                SizedBox(height: 30.v)
                ]
              )
            )
          )
        );
      },
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
                  "You are about to purchase \u20A6500 airtime for 08059941818",
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
                    style: CustomTextStyles.titleSmallPrimary15
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

   // This function calls the botom sheet tp select airtime type
  void _airtimeTypeBottomSheet(BuildContext context) {
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
                  text: "VTU",
                  width: 320.h,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                ),
                SizedBox(height: 20.v),
                CustomOutlinedButton(
                  text: "Share and Sell",
                  width: 320.h,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                  buttonTextStyle: theme.textTheme.bodyLarge!,
                )
              ],
            )
          )
        );
      },
    );
  }

  //This functions call the error bottom sheet
  //It should be called when there is an errror
  void _ErrorBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: true,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Icon(Icons.error_outline, size:48.adaptSize,  color:Colors.red),
                  SizedBox(height: 14.v),
                  Text(
                    "Error",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "Insufficient fund",
                     style: TextStyle(fontFamily: "Poppins", fontSize:14, fontWeight: FontWeight.w400)
                  ),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                    text:"Retry",
                    buttonStyle: CustomButtonStyles.fillErrorContainer,
                    onPressed: (){
                      //Implement action
                    },
                  )
                ]
              )
            )
          )
        );
      },
    );
  }


  //This function calls the bottom sheet when payment is succesfull
  void _SucccessBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: false,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    Icons.check,
                    size: 45.adaptSize,
                    color: Color(0xFF08DE11)
                    ),
                  SizedBox(height:  14.v),
                  Text(
                    "Success",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "Poppins"),
                  ),
                  SizedBox(height:  10.v),
                  Center(
                    child: Text(
                      "Payment  Success"
                    )
                  ),
                  SizedBox(height:  24.v),
                  Container(
                    height: 41.v,
                    width: 320.h,
                    child: ElevatedButton(
                      child: Text(
                        "Back to Home",
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize:14, fontFamily: "Poppins")
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder:(context) =>HomePage())
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Color(0xFF08DE11),// Background color of the button
                        foregroundColor: Colors.white, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0), // Button border radius
                        )
                      ),
                  
                    ),
                  )
                                                   
                ]
              )
            )
          )
        );
      },
    );
  }
}