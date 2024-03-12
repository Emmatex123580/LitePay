import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_image_view.dart';
import '../theme/theme_helper.dart';

class AboutLitepayScreen extends StatelessWidget {
  const AboutLitepayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 32.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            imagePath:
                                ImageConstant.imgArrowLeftOnprimarycontainer,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 87.h, top: 2.v),
                            child: Text("About LitePay",
                                style: theme.textTheme.titleSmall))
                      ]),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 51.h),
                          child: Text("Welcome to LitePay",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
