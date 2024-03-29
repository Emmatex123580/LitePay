import 'package:flutter/material.dart';
import 'package:litepay/main.dart';
import 'package:litepay/widgets/custom_icon_button.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    

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
                            height: 30.adaptSize,
                            width: 30.adaptSize,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
                              );
            
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
                      width: 300.h,
                      margin: EdgeInsets.symmetric(horizontal: 39.h),
                      child: Text(
                          "To get notifications, try performing transactions",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMedium14)),
                  SizedBox(height: 22.v),
                  CustomOutlinedButton(
                    onPressed: () {
                       showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (BuildContext context) {
                      return Container(
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            
                            Text(
                              "Services",
                              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500)
                            ),
                            Row(
                              children: [
                                 Container(
                                  width: screenWidth * 0.33,
                                   child: Center(
                                     child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Airtime",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                                                   ),
                                   ),
                                 ),
                  
                                Container(
                                  width: screenWidth * 0.33,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgMingcuteTransferLine,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Data",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                Container(
                                  width: screenWidth * 0.33,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgStar,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Mega Data",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                
                              ]
                            ),
            
                            Row(
                              children: [
                                 Container(
                                  width: screenWidth * 0.33,
                                   child: Center(
                                     child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Cable Sub",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                   ),
                                 ),
                                
                                Container(
                                  width: screenWidth * 0.33,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgMingcuteTransferLine,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Betting",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                                Container(
                                  width: screenWidth * 0.33,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgHealthiconsEle,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Electriicity",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                
                              ]
                            ),
                            Row(
                              children: [
                                 Container(
                                  width: screenWidth * 0.33,
                                   child: Center(
                                     child: Column(
                                       children: [
                                         CustomIconButton(
                                           height: 30.adaptSize,
                                           width: 30.adaptSize,
                                           padding: EdgeInsets.all(5.h),
                                           decoration: IconButtonStyleHelper.outlinePrimary,
                                           child: CustomImageView(
                                             imagePath: ImageConstant.imgUser,
                                           ),
                                         ),
                                         SizedBox(height: 2.v),
                                        Text(
                                          "Educational PIN",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                       ],
                                     ),
                                   ),
                                 ),
                                 
            
                                Container(
                                  width: screenWidth * 0.33,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        CustomIconButton(
                                          height: 30.adaptSize,
                                          width: 30.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper.outlinePrimary,
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgMingcuteTransferLine,
                                          ),
                                        ),
                                        SizedBox(height: 2.v),
                                        Text(
                                          "Join Affiliate",
                                          style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 12
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(width: screenWidth * 0.33,)
                              ]
                            ) 
                          ]
                        )
                        
                      );
                    }
                  );
                    },
                      height: 30.v,
                      width: 110.h, 
                      text: "Start transaction",
                      buttonStyle: CustomButtonStyles.outlineOnPrimaryTL15),
                  Spacer(flex: 63)
                ])),
            ));
  }


}
