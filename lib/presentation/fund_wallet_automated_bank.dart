
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:litepay/core/copy_function.dart';
import 'package:litepay/theme/theme_helper.dart';

class FundWalletAutomatedBank extends StatefulWidget {
  const FundWalletAutomatedBank({super.key});

  @override
  State<FundWalletAutomatedBank> createState() => _FundWalletAutomatedBankState();
}

class _FundWalletAutomatedBankState extends State<FundWalletAutomatedBank> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; //getting the device screen height
    double screenWidth = MediaQuery.of(context).size.width; // getting the device screen width
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Automated Bank Transfer",
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
        body: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.01),
              Text(
                "Pay into the acccount below and your wallet will be \nfunded automatically",
                style: TextStyle(
                  color: Color(0XFF2F2F2F),
                  fontSize: 12,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(height: screenHeight * 0.06),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 320,
                      height: 110,
                      margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFD250FF),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("8621091276", style: TextStyle(color: Colors.white)),
                              IconButton(
                                icon: Icon(Icons.content_copy, size: 22, color: Colors.white),
                                onPressed: () => copyText(context, "8621091276","Copied to clipboard"),
                                tooltip: "Copy number",
                              )
                            ]
                          ),
                          SizedBox(),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Account Name", style: TextStyle(color: Color(0xFFFFFFFF))),
                              Text("LitePay",style: TextStyle(color: Colors.white))
                            ] 
                          ),
                          SizedBox(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Ahby", style: TextStyle(color: Colors.white) ),
                              Text("9payment service bank", style: TextStyle(color: Colors.white))
                            ]
                          )
                        ],
                      )
                    );
                  },
                ),
              ),
            ]
          ),
        ),
      )
    );
  }
}