import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

class CablePayScreen extends StatefulWidget {
  const CablePayScreen({super.key});

  @override
  State<CablePayScreen> createState() => _CablePayScreenState();
}

class _CablePayScreenState extends State<CablePayScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _cable_provider = TextEditingController();//Controller for the Netwok provideer textfield
  late TextEditingController  _cable_plan  = TextEditingController(); 
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
          
                  SizedBox(height: 80.v),
                  
                  CustomElevatedButton(
                    text: "Validate Cable Number",
                    width: 184.h,
                    buttonStyle: CustomButtonStyles.outlineOnPrimaryTL19,
                    onPressed: () async{
                      if(_formKey.currentState!.validate()){
                       //Implement an action
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
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(child: Row()),

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
                          hintStyle:  theme.textTheme.labelSmall,
                        ),
                        cursorColor:  Colors.black
                      ),
                    )
                  ]
                )
              ),

              Expanded(
                child: ListView.builder(
                  itemCount:  10,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 43.7.v,
                      width:320.h,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(bottom: 4.v, top: 4.v),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset("as", width:28.h, height: 19.8.v),
                            SizedBox(width: 8.h),
                            Text(
                            "",
                              style: TextStyle(
                                fontSize: 12, 
                                fontWeight: FontWeight.w400, 
                                fontFamily:"Poppins", 
                                color:Colors.black
                              ),
                            )
                          ]
                        ),
                        style: CustomButtonStyles.outlinePrimaryTL5,
                      ),
                    );
                  }
                )
              ),
            ]
          )
        );
      },
    );
  }
 

}