import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'home_screen_page.dart';
import '../widgets/custom_bottom_bar.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class NotificationOneScreen extends StatelessWidget {
  NotificationOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 27.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            onTap: () {
                              Navigator.pop(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 92.h, bottom: 2.v),
                            child: Text("Notifications",
                                style: theme.textTheme.titleSmall))
                      ])),
                  Spacer(flex: 36),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 67.v,
                      width: 66.h),
                  SizedBox(height: 20.v),
                  Text("No notifications yet!",
                      style: CustomTextStyles
                          .titleMediumOnPrimaryContainerSemiBold),
                  SizedBox(height: 8.v),
                  Container(
                      width: 240.h,
                      margin: EdgeInsets.symmetric(horizontal: 39.h),
                      child: Text(
                          "To get notifications, try performing transactions",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMedium14)),
                  SizedBox(height: 22.v),
                  CustomOutlinedButton(
                      height: 30.v,
                      width: 110.h, 
                      text: "Start transaction",
                      buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15),
                  Spacer(flex: 63)
                ])),
            ));
  }


}
