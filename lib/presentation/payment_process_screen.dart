import "package:flutter/material.dart";

class PaymentProcessScreen extends StatefulWidget {
  const PaymentProcessScreen({super.key});

  @override
  State<PaymentProcessScreen> createState() => _PaymentProcessScreenState();
}

class _PaymentProcessScreenState extends State<PaymentProcessScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
         appBar: AppBar(
          title: Text(
            "Payment",
            style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 14)
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
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // User email
                  Text(
                    "abigailnwadike@gmail.com",
                    style: TextStyle(fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w400)
                    ),
                  Icon(Icons.account_circle_outlined),
                ]
              ),
              SizedBox(height: screenHeight * 0.1),

              // User Paymnt method widget
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.35,
                decoration: BoxDecoration(
                  color:  Color(0XFFE8BFF6),
                  border: Border.all(
                    color: Color(0XFFE8BFF6) ,// Border color
                    width: 0.3, // Border thickness
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w400)
                    ),
                    Text(
                      "NGN 101.50",
                      style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 24)
                    ),
                    SizedBox(),
                    Expanded(
                      child: Container(
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                        color:  Colors.white,
                        border: Border.all(
                          color: Color(0XFFE8BFF6),// Border color
                          // Border thickness
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Color(0XFFF90808),
                              size: 100
                            ),
                            Text(
                              "No payment method enabled",
                              style: TextStyle(fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w400)
                            ),
                          ]
                        )
                      ),
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}