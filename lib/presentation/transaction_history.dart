
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:litepay/presentation/transaction_details.dart';
import 'package:litepay/theme/theme_helper.dart';
class TransactionHistory extends StatefulWidget {
  const TransactionHistory({super.key});

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Transaction History",
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
        body: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap:() {
                        //Implelment an action
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TransactionDetails())
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                            children:[
                              Container(
                                height: 24,
                                width: 24,
                                child: Center(
                                  child: SvgPicture.asset(
                                    "assets/images/img_settings.svg",
                                    width: 10,
                                    height: 10.5,
                                    color: Colors.white,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF9B03D0)
                              )
                            ),
                            SizedBox(width: 13.0),
                            Column(
                              children: [
                                Text(
                                  "Airtime",
                                  style:TextStyle(
                                    fontFamily: "Poppins", 
                                    fontWeight: FontWeight.w400, 
                                    fontSize: 14, 
                                  )
                                ),
                                Text(
                                  "Feb 12,12: 20:33",
                                   style:TextStyle(
                                    fontFamily: "Poppins", 
                                    fontWeight: FontWeight.w400, 
                                    fontSize: 8,
                                  )
                                ),
                              ]
                            ) 
                            ]
                           ),
                    
                          Column(
                            children: [
                              Text(
                                "\u20A6500.00",
                                style: theme.textTheme.headlineMedium
                              ),
                              Text(
                                "Successful",
                                style:TextStyle(
                                  fontFamily: "Poppins", 
                                  fontWeight: FontWeight.w400, 
                                  fontSize: 8,
                                  color:Color(0xFF08DE11)
                                )
                              ),
                            ]
                          )                   
                          ],
                        )
                      ),
                    );
                  },
                )
              ),
            )
          ]     
        )
      )
    );
  }
}