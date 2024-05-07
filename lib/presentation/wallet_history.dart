import 'package:flutter/material.dart';

class WalletHistory extends StatefulWidget {
  const WalletHistory({super.key});

  @override
  State<WalletHistory> createState() => _WalletHistoryState();
}

class _WalletHistoryState extends State<WalletHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Wallet History",
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
          child: ListView(
            children: [
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  //Implement an action
                },
                child: Container(
                  width: 320,
                  height: 73,
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 28,
                                  height: 28,
                                  padding: EdgeInsets.all(4.0),
                                  child: Text(
                                    "NA",
                                    style:TextStyle(
                                    fontFamily: "Poppins", 
                                    fontWeight: FontWeight.w500, 
                                    fontSize: 14, color: 
                                    Colors.white
                                    )
                                  ),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF9B03D0)
                                  ),
                                ),
                                SizedBox(width: 16.0),
                                Text(
                                  "Funded wallet",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )
                                ),
                              ]
                            )
                          ),
                          Text(
                            "11 mins",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFC2C0C0),
                            )
                          )
                        ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "You just funded your wallet with \u20A62000",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Color(0xFF2F2F2F)
                              )
                            ),
                            Text(
                              "March 3, 2024 12:44",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF2F2F2F)
                              )
                            ),
                          ],
                        )
                      )
                    ],
                  )
                ),
              )
            ],
          ),
        )
      )
    );
  }
}