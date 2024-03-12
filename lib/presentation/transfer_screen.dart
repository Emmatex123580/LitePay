import 'package:flutter/material.dart';
import '../core/app_export.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
