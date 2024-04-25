import 'package:flutter/material.dart';
import 'package:litepay/presentation/payment_process_screen.dart';
import 'package:litepay/widgets/custom_elevated_button.dart';


class FundWalletAtmMonnify extends StatefulWidget {
  const FundWalletAtmMonnify({super.key});

  @override
  State<FundWalletAtmMonnify> createState() => _FundWalletAtmMonnifyState();
}

class _FundWalletAtmMonnifyState extends State<FundWalletAtmMonnify> {
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
            "ATM Payment",
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PaymentProcessScreen()),
                    );
                    },                
                  text: "Continue with payment",
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
              ),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Image.asset("assets/images/monnify.png")
                ])
            ])
          ),
        )
      )
    );
  }
}
    