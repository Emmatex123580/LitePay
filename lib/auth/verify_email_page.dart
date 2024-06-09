import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/main.dart';
import 'package:litepay/presentation/sign_in_screen.dart';
import 'package:litepay/presentation/sign_up_one_screen.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  bool isEmailVerified = false;
  Timer? timer;
  bool canResendEmail = false;

  @override  
  void initState() {
    super.initState();
    isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified; //Users need to be created before!
    if (!isEmailVerified) {
      sendVerificationEmail(); 
      Timer.periodic(
        Duration(seconds: 2),
        (_) => checkEmailVerified(),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }


  Future checkEmailVerified() async{
    await FirebaseAuth.instance.currentUser!.reload();
    setState(() {
      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    });
    if (isEmailVerified) timer?.cancel();
  }

  //Send verification email
  Future sendVerificationEmail() async{
    try{
      final user = FirebaseAuth.instance.currentUser!;
      await user.sendEmailVerification();
      setState(() => canResendEmail = false); 
      await Future.delayed(Duration(seconds: 3));
      setState(() => canResendEmail = true);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(e.toString()),
      ));
    }
  }
  Widget build(BuildContext context) => isEmailVerified
    ? HomePage()
    : Scaffold(
      appBar: AppBar(
        title: Text(
          'Verify Email',
          style: TextStyle(fontSize: 14.adaptSize, fontFamily: "Poppins", fontWeight: FontWeight.w500),
        ),
         backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.adaptSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'A verification email has been sent to your email',
              style: TextStyle(fontFamily: "Poppins", fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              icon: Icon(Icons.email, size: 32.adaptSize),
              label: Text(
                "Resend email",
                style: TextStyle(fontSize: 24.adaptSize, color: Colors.white)
              ),
              onPressed: canResendEmail ? sendVerificationEmail : null
            ),
            SizedBox(height: 8.h),
            TextButton(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              child: Text(
                'cancel',
                style: TextStyle(fontSize: 24.adaptSize)
              ),
              onPressed: () async{
                await FirebaseAuth.instance.signOut();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: ((context) => SignInScreen()))
                );
              }
            )
            
          ]
        )
      )
    );
}