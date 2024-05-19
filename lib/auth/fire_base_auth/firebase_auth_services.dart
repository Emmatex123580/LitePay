import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/presentation/sign_up_one_screen.dart';
import 'package:litepay/widgets/signup_success_bottomsheet.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // SignUp method
  Future<User?> signUpWithEmailAndPassword(BuildContext context, email, String password) async{
    try {
      UserCredential credential = await  _auth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());
      return credential.user;
    } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("An unexpected error occurred."),
        ),
      );
    }
    
    return null;
  }




  // Sign Method
  Future<User?> signInWithEmailAndPassword(BuildContext context,String email, String password) async{
    try {
      UserCredential credential = await  _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      String errorMessage;
      switch (e.code) {
        case 'invalid-email':
          errorMessage = 'Invalid email format.';
          break;
        case 'user-not-found':
          errorMessage = 'No user found with this email.';
          break;
        case 'wrong-password':
          errorMessage = 'Incorrect password.';
          break;
        case 'network-request-failed':
         errorMessage = 'Network error. Please try again.';
          break;
        case 'invalid-credential':
        errorMessage = 'Invalid credential';
          break;
        default:
          errorMessage = 'An unexpected error occurred.';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("An unexpected error occurred."),
        ),
      );
    }
    return null;
  }

  
  //This method Initiates and call the signUp function
  Future<bool> signUp(BuildContext context, String email, String password, String address, String fullname, String phoneNumber, String username) async{
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
          
      User? user = userCredential.user;
      if (user == null) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Signup Unsuccessful. Please try again."),
        ));
        return false;
      } else {
        // Store user details in Firestore
        await _firestore.collection('Users').doc(user.uid).set({
          'email': email.trim().toLowerCase(),
          'full name': fullname.trim(),
          'username': username.trim(),
          'phoneNumber': phoneNumber.trim(),
          'address': address.trim(),
          'id': user.uid
          // Don't store the password directly in Firestore
          // 'password': password.trim(),
          // add other user details here
        });
          signUpSuccess(context);
        return true;
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        if (e.code == "email-already-in-use") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("email already in use"),
          ));
        }
        else if (e.code == "network-request-failed") {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Check Internet connection and try again"),
          ));
        }
      }
      
      return false;
    }
  }

  
}

 
