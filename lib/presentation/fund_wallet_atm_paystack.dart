import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/core/card_input_formatter.dart';
import 'package:litepay/main.dart';
import 'package:litepay/presentation/payment_process_screen.dart';
import 'package:litepay/theme/theme_helper.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';

//Main code block for the fund_wallet_atm_paystack
class FundWalletAtmPaystack extends StatefulWidget {
  const FundWalletAtmPaystack({super.key});

  @override
  State<FundWalletAtmPaystack> createState() => _FundWalletAtmPaystackState();
}

class _FundWalletAtmPaystackState extends State<FundWalletAtmPaystack> {
  TextEditingController amountController_1 = TextEditingController();
  TextEditingController amountController_2 = TextEditingController();
  bool cardPayment_error = false;
 

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Payment Gateway",
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
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                    "Amount",
                    style: TextStyle(fontFamily: "Poppins")
                  ),
                  ],
                ),
        
                //Amount container
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        color:  Color(0XFFF5F5F5),
                        borderRadius: BorderRadius.circular(20.0),                
                        ),
                      child: TextField(
                        controller: amountController_1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "₦  Amount",
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                      )
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.08),
        
                Row(                 
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Text(
                 "Amount + charge",
                  style: TextStyle(fontFamily: "Poppins")
                  ),
                ],
                ),
        
                //Amount + charge container widget
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: screenWidth * 0.9,
                      decoration: BoxDecoration(
                        color:  Color(0XFFF5F5F5),
                        borderRadius: BorderRadius.circular(20.0),                
                        ),
                      child: TextField(
                        controller: amountController_2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "₦  Amount",
                          contentPadding: EdgeInsets.all(10.0),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                      )
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.09),

                //Payment button
                CustomElevatedButton(
                onPressed: () {                  
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: _buildCustomDialog(context, setState),// Your custom dialog content
                          backgroundColor: Colors.white.withOpacity(0.0),
                      );
                    },
                  );
                },                   
                text: "Pay",
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
            ),
            ])
          ),
        )
      )
    );
  }

// Show Dialog box UI
 Widget _buildCustomDialog(BuildContext context, setState) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;
  String payment_method ="Card" ;
  Color color1 = Color(0XFFA114D2);
  Color color2 = Colors.black;
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
      return Container(
        height: screenHeight * 0.6,
        width: screenWidth * 0.98,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => _cancel_payment(context),
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
            SizedBox(height: screenHeight * 0.02),
            Expanded(
              child: Container(
                width: screenWidth * 0.95,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: screenHeight * 0.03),
                        Text(
                          "abigailnwadike@gmail.com",
                          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400, fontFamily: "Poppins")
                        ),
                        Text(
                          "Pay NGN 510.00",
                           style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: "Poppins")
                        ),
                      ]
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      color:  Color(0XFFF5F5F5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.credit_card_outlined,
                                  color: (payment_method == "Card") ? color1 : color2,
                                ),
                                onPressed: () {
                                  setState(() { 
                                    payment_method = "Card";
                                  });
                                },
                              ),
                              Text(
                                "Card",
                                 style: TextStyle(
                                  fontSize: 13, 
                                  fontWeight: FontWeight.w500, 
                                  fontFamily: "Poppins",
                                  color: (payment_method == "Card") ? color1 : color2,
                                )
                              )
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.09),
                          Column(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.account_balance_outlined,
                                  color: (payment_method == "Bank") ? color1 : color2,
                                ),
                                onPressed: () {
                                  setState(() {
                                    payment_method = "Bank";
                                  });
                                },
                              ),
                              Text(
                                "Bank", 
                                style: TextStyle(
                                  fontSize: 13, 
                                  fontWeight: FontWeight.w500, 
                                  fontFamily: "Poppins",
                                  color: (payment_method == "Bank") ? color1 : color2,
                                )
                              )
                            ],
                          )
                        ]
                      )
                    ),
                    (payment_method == "Card") ? _buildCard(context, setState) : _buildBank(context),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_outline, size: 10),
                        SizedBox(width: 5),
                        Text("Secured by", style: theme.textTheme.bodySmall) 
                      ]
                    ),
                    Center(
                      child: Text(
                        "Paystack", 
                        style: TextStyle(fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.bold)
                      )
                    )
                  ] 
                )
              ),
            )
          ]
        )
      );
    }
    );
  }

  //Card payment form UI
  Widget _buildCard(BuildContext context, setState){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final _formKey1 = GlobalKey<FormState>();
    return StatefulBuilder(
      builder: (BuildContext context, setState) {
        return Column( 
          children: [
            SizedBox(height: screenHeight * 0.03),
            Text(
              "Enter your card details to pay",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: "Poppins")
            ),
            SizedBox(height: screenHeight * 0.02),
            Form(
              key: _formKey1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0), 
                      color:  Color(0XFFF5F5F5),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        // Conditions for validating the data
                        if (value!.isEmpty) {
                          return "Please enter your card details";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        CardNumberFormatter(),
                      ],
                      decoration: InputDecoration(
                        hintText: "Card Number",
                        prefixIcon: Icon(Icons.credit_card_outlined),
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
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenWidth * 0.34,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0), 
                           color:  Color(0XFFF5F5F5),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            hintText: "Card Expiry",
                            contentPadding: EdgeInsets.all(10.0),
                            hintStyle: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400, 
                              fontSize: 12, 
                              color: Colors.grey
                            ),
                            border: InputBorder.none,
                          ),
                          cursorColor: Colors.black,
                        ),
                      ),
                       Container(
                        width: screenWidth * 0.34,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0), 
                           color:  Color(0XFFF5F5F5),
                        ),
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            hintText: "cvv",
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
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  CustomElevatedButton(
                    text: "Pay 510.10",    
                    margin: EdgeInsets.only(left: 10, right: 10),
                    onPressed: () {
                      //you can adjsut the action of this button as needed
                      if (_formKey1.currentState!.validate()){
                        Navigator.of(context).pop();

                      //Dialog box when payment is validated and successful
                      _paymentSuccessful(context);
                      }
                      else {
                        setState(() {
                         Navigator.of(context).pop();

                         //Dialog box that appears when the payment is not processed
                         _paymentUnsuccessful(context);
                        } 
                        );
                      }
                    },
                  ),
                ]
              ),
                  
            ),
          ]
        );
      }
    );
  }

  //Bank payment form UI
  Widget _buildBank(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final _formKey2 = GlobalKey<FormState>();
    return Column(
      children: [
        SizedBox(height: screenHeight * 0.03),
        Center(
          child: Text(
            "Choose your bank to start payment",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, fontFamily: "Poppins")
          ),
        ),
        SizedBox(height: screenHeight * 0.01),
        Form(
          key: _formKey2,
          child:Column(
            children: [
              Container(
                width: screenWidth * 0.75,
                height: screenHeight * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), 
                  color:  Color(0XFFF5F5F5),
                ),
                child: TextFormField(
                  validator: (value) {
                    // Conditions for validating the data
                    if (value!.isEmpty) {
                      return "Please choose your bank";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberFormatter(),
                  ],
                  decoration: InputDecoration(
                    hintText: "Tap here to choose",
                    suffixIcon: IconButton(
                      icon:  Icon(Icons.arrow_drop_down_outlined),
                      onPressed: () {
                        //Call the action and drop down box here
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
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight * 0.1),
              CustomElevatedButton(
                    text: "Pay 510.10",    
                    margin: EdgeInsets.only(left: 10, right: 10),
                    onPressed: () {
                      //you can adjsut the action of this button as needed
                      if (_formKey2.currentState!.validate()){
                        Navigator.of(context).pop();
                        
                        //Dialog box when payment is validated and successful
                        _paymentSuccessful(context); //code block for this function is below
                      }
                      else {
                        setState(() {
                          Navigator.of(context).pop();

                          //Dialog box that appear when payment is not successful
                          _paymentUnsuccessful(context); //code block for this function is found below
                        });
                      }
                    },
                  ),
            ]
          )
        ),
        
      ],
    );
  }

  //Dialog Widget UI for cancelling payment
  dynamic _cancel_payment(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            height: screenHeight * 0.08,
            padding: EdgeInsets.only(top: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text("Do you want to cancel payment?", style: theme.textTheme.titleSmall)
          ),
          actionsPadding: EdgeInsets.only(bottom: 30),
          actions: [
            TextButton(
              onPressed: () {
               Navigator.of(context).pop();
              },
              child: Text("No")
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              child: Text("Yes")
            ),
          ],
        );
      }
    );
  }

  //Dialog box that appears when payment process is validated successful
  dynamic _paymentSuccessful(BuildContext context) {
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

  //Dialog box that appears when payment is unsuccssful
  dynamic _paymentUnsuccessful(BuildContext context) {
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
}