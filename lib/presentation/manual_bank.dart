import 'package:flutter/material.dart';

class ManualBankPayment extends StatefulWidget {
  const ManualBankPayment({super.key});

  @override
  State<ManualBankPayment> createState() => _ManualBankPaymentState();
}

class _ManualBankPaymentState extends State<ManualBankPayment> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Manual Bank Payment",
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
      )
    );
  }
}