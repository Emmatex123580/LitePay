import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';
import 'package:litepay/widgets/payment_success.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CablePayScreen extends StatefulWidget {
  const CablePayScreen({super.key});

  @override
  State<CablePayScreen> createState() => _CablePayScreenState();
}

class _CablePayScreenState extends State<CablePayScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _cable_provider = TextEditingController();//Controller for the Netwok provideer textfield
  TextEditingController  _cable_plan  = TextEditingController(); //controller for the select plan field
  TextEditingController pinEditingController = TextEditingController(); //controller for dialing the pin
  String currentText = "";
  bool _card_name = false;
  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text(
            "Pay Cable Bill",
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
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child:Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40.v),
                  Text(
                    "How much would you like to pay?",
                    style: TextStyle(fontSize: 14.adaptSize, fontFamily: "Poppins", fontWeight: FontWeight.w500),
                  ),

                  SizedBox(height: 44.v),

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
                      controller: _cable_provider,
                      readOnly:true,
                      validator: (value) {
                        //validate the value typed in the text
                      },
                      decoration: InputDecoration(
                        hintText: (_cable_provider.text == "") ? "Select Cable" : _cable_provider.text,
                        suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            _cableProviderBottomSheet(context);

                          }  
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
                      controller: _cable_plan,
                      keyboardType: TextInputType.number,
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: (_cable_plan.text == "") ? "Select Plan" : _cable_plan.text,
                        contentPadding: EdgeInsets.all(10.0),
                        border: InputBorder.none,
                        suffixIcon: IconButton(        
                          icon:  Icon(Icons.arrow_drop_down_outlined),
                          onPressed: () {
                            //Call the action and drop down box here
                            _cablePlanBottomSheet(context);
                            
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
          
                  //Holds the textfield for IUC number
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
                      validator:(value) {
                        //Validate the IUC/smart card

                        if (value!.isNotEmpty) {
                          setState(() {
                            _card_name = true;
                          });
                          return null;
                        }
                          
                      },
                      decoration: InputDecoration(
                        hintText: "IUC/Smartcard Number",
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

                  Visibility(
                    visible: _card_name,
                    child: Container(
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
                        validator:(value) {
                          //Validate the IUC/smart card
                  
                        },
                        decoration: InputDecoration(
                          hintText: "",
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
                  ),
          
                  SizedBox(height: 80.v),
                  
                  CustomElevatedButton(
                    text: (_card_name == false) ? "Validate Cable" : "Pay",
                    width: 184.h,
                    buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19,
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                       //Implement an action
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


  // This function calls the cable provider bottom sheet
  void _cableProviderBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: false,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select cable provider",
                      style: TextStyle(fontFamily: "Poppins", fontSize: 18.adaptSize, fontWeight: FontWeight.w400),
                    ),
                    IconButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                      },
                      icon: Container(
                        height: 24.adaptSize,
                        child: Center(
                          child: Icon(
                            Icons.close,
                            color: Color(0XFFF90808),
                            size: 18.adaptSize,
                          ),
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

                SizedBox(height: 20.v),

                Container(
                  height: 44.v,
                  width:320.h,
                  margin: EdgeInsets.only(bottom: 4.v, top: 4.v,),
                  child: OutlinedButton(
                    onPressed: () {
                      _cable_provider.text = "GOTV";
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Gotv.png", width:32.h, height: 32.v),
                          Text(
                            "GoTV",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.w600, 
                              fontFamily:"Poppins", 
                              color:Colors.black
                            ),
                          ),
                          SizedBox(width: 62.h,)
                        ]
                      ),
                    ),
                    style: CustomButtonStyles.outlinePrimaryTL5,
                  ),
                ),

                SizedBox(height: 20.v),

                Container(
                  height: 44.v,
                  width:320.h,
                  margin: EdgeInsets.only(bottom: 4.v, top: 4.v),
                  child: OutlinedButton(
                    onPressed: () {
                       _cable_provider.text = "Startimes";
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left:10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Startimes.png", width:32.h, height: 32.v),
                          Text(
                            "Startimes",
                            style: TextStyle(
                              fontSize: 18, 
                              fontWeight: FontWeight.w600, 
                              fontFamily:"Poppins", 
                              color:Colors.black
                            ),
                          ),
                          SizedBox(width: 62.h)
                        ]
                      ),
                    ),
                    style: CustomButtonStyles.outlinePrimaryTL5,
                  ),
                ),

                SizedBox(height: 20.v),

                Container(
                  height: 44.v,
                  width:320.h,
                  margin: EdgeInsets.only(bottom: 4.v, top: 4.v),
                  child: OutlinedButton(
                    onPressed: () {
                       _cable_provider.text = "Dstv";
                      Navigator.of(context).pop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/Dstv.png", width:28.h, height: 19.8.v),
                        Text(
                          "Dstv",
                          style: TextStyle(
                            fontSize: 18, 
                            fontWeight: FontWeight.w600, 
                            fontFamily:"Poppins", 
                            color:Colors.black
                          ),
                        ),
                        SizedBox(width: 62.h)
                      ]
                    ),
                    style: CustomButtonStyles.outlinePrimaryTL5,
                  ),
                ),
              ],
            )
          )
        );
      },
    );
  }

  //Call this function calls the bottom  sheet for selecting cable plan
  void _cablePlanBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isDismissible: false,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(top:43.v, left:24.v, right:24.v),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 182.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: ()=>Navigator.of(context).pop()
                      ),
                      Text("Select Plan")
                    ]
                  ),
                ),
                SizedBox(height: 33.v),
                Container(  
                  padding: EdgeInsets.only(left:8.h,  top:4.v,  bottom:4.v),
                  height: 34.v,
                  decoration: BoxDecoration(
                    color:  Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search,  size:18),
                      SizedBox(width:8.h),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            border: InputBorder.none,
                            hintStyle:  TextStyle(fontWeight: FontWeight.w500, fontSize: 14, fontFamily: "Poppins"),
                          ),
                          cursorColor:  Colors.black
                        ),
                      )
                    ]
                  )
                ),
                SizedBox(height: 33.v),
                Expanded(
                  child: ListView.builder(
                    itemCount:  10,
                    itemBuilder: (BuildContext context, index) {
                      return CustomOutlinedButton(
                        text: 'Gotv smallie-Monthly -\u20A61300  ',
                        buttonStyle: CustomButtonStyles.outlinePrimaryTL5,
                        buttonTextStyle: TextStyle(
                          fontWeight: FontWeight.w500, 
                          fontSize: 18, 
                          fontFamily: "Poppins", 
                          color: Colors.black
                        ),
                        margin: EdgeInsets.only(top:12.v, bottom: 12.v),
                        onPressed: () {
                          _cable_plan.text = "Gotv smallie";
                          Navigator.of(context).pop();
                        },
                      );
                    }
                  )
                ),
              ]
            )
          ),
        );
      },
    );
  }
  

 

}