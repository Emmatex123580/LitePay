import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:litepay/theme/theme_helper.dart';
  
  
  //Function for copying texts
  //display parameter - Holds the string to be displayed on copy
  //text parameter - Holds the text to be copied 
  void copyText(BuildContext context, String text, String display) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.white,
        content: Text('$display', style: theme.textTheme.titleMedium,),
      ),
    );
  }