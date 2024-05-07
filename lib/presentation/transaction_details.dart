import 'package:flutter/material.dart';

class TransactionDetails extends StatefulWidget {
  const TransactionDetails({super.key});

  @override
  State<TransactionDetails> createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Transaction Details",
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