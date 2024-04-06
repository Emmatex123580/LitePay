import 'package:flutter/material.dart';
import 'package:litepay/presentation/payment_process_screen.dart';
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
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Payment Gateway",
            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w100)
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
        
                // Payment Button widget
                CustomElevatedButton(
                  onPressed: () {                  
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: CustomDialog(),// Your custom dialog content
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
}


//Show Dialog widget for the payment gateway page on the UI design
class CustomDialog extends StatefulWidget {
  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    String payment_method = "Card";
    return Container(
      height: screenHeight * 0.6,
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
                      Text("abigailnwadike@gmail.com"),
                      Text("Pay NGN 510.00")
                    ]
                  ),
                  Container(
                    color:  Color(0XFFF5F5F5),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.credit_card_outlined,
                            color: Color(0XFFA114D2)
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.location_city,
                            color: Color(0XFFA114D2)
                          ),
                          onPressed: () {},
                        )
                      ]
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
}