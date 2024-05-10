import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/presentation/airtime_funding_payment.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

class AirtimeFunding extends StatefulWidget {
  const AirtimeFunding({super.key});

  @override
  State<AirtimeFunding> createState() => _AirtimeFundingState();
}

class _AirtimeFundingState extends State<AirtimeFunding> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController network_provider = TextEditingController();//Controller for the Netwok provideer textfield
  bool _isChecked = false; //Variable for indicating the state of the checkbox
  late TextEditingController _amount = TextEditingController();
  bool is_typing = false;

  @override
  void dispose() {
    network_provider.dispose();
    super.dispose();
  }
  
 @override
  void initState() {
    super.initState();
    _amount.text = "Default Text";
    _amount.addListener(() {
      if (_amount.text.isEmpty) {
        setState(() {
          is_typing = false;
        });
      }
      }
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text(
            "Airtime Funding",
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
            padding: EdgeInsets.all(19),
            color: Colors.white,
            child:Center(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 60.v),
                    
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
                        onChanged: (value) {
                          setState(() {
                            is_typing = true; 
                            if(_amount.text == ''){
                              is_typing = false;
                            };
                          });
                        },
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

                    //Holds the textfield for phone no.
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
                          hintText: "Phone no. to transfer the number from",
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
                      visible: is_typing,
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
                        decoration: InputDecoration(
                          hintText: "Amount to get",
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
                            "Check if you want to use it to fund wallet or transfer to bank",
                            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, fontFamily: "Poppins"),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ]
                    ), 
                    SizedBox(height: 100.v),
                    CustomElevatedButton(
                      text: "Proceed",
                      onPressed: () {
                        if(_formKey.currentState!.validate()){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: ((context) => AirtimeFundingPayment())
                          ));
                        }
                      },
                    )
                  ]
                ),
              )
            )
          )
        ),
      )
    );
  }

 

  // This function calls the botom sheet tp select network provider
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

}