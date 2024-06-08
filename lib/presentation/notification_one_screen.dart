import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:litepay/main.dart';
import 'package:litepay/widgets/custom_icon_button.dart';
import '../core/app_export.dart';
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

                  SvgPicture.asset(
                    "assets/images/img_vector.svg",
                    width: 67.v,
                    height: 67.h,
                    color: Color(0XFFFA0808),
                  ),
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
                      style: CustomTextStyles.bodyMedium14
                    )
                  ),
                  SizedBox(height: 22.v),
                  CustomOutlinedButton(
                    onPressed: () {
                    showModalBottomSheet(
                    context: context,
                    isDismissible: true,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                    builder: (BuildContext context) {
                      return Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.adaptSize,),
                        //height: double.maxFinite,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10.v),
                            Text(
                              "Services",
                              style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500)
                              ),
                              SizedBox(height: 10.v),
                              Container(
                                height: 260.v,
                                child: GridView.count(
                                  shrinkWrap: true,
                                  crossAxisCount: 3,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                     children: [
                                      CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/img_airtime.svg",
                                           color: Color(0xFF9B03D0),
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
                                                 
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/data.svg",
                                           width: 30.adaptSize,
                                           height: 30.adaptSize,
                                           color: Color(0XFF9B03D0),
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
                                                                    
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                     children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/data.svg",
                                           color: Color(0xFF9B03D0),
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
                                
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                     children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/cable_sub.svg",
                                           color: Color(0xFF9B03D0),
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
                                                 
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                     children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/img_ph_soccer_ball_light.svg",
                                           width: 30.adaptSize,
                                           height: 30.adaptSize,
                                           color: Color(0XFF9B03D0),
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
                                                                    
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/electricity.svg",
                                           color: Color(0xFF9B03D0),
                                         ),
                                       ),
                                       SizedBox(height: 2.v),
                                       Text(
                                         "Electricity",
                                         style: TextStyle(
                                           fontFamily: "Poppins",
                                           fontSize: 12
                                         ),
                                       )
                                     ],
                                    ),
                                
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/educational.svg",
                                           color: Color(0xFF9B03D0),
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
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                     children: [
                                       CustomIconButton(
                                         height: 30.adaptSize,
                                         width: 30.adaptSize,
                                         padding: EdgeInsets.all(5.h),
                                         decoration: IconButtonStyleHelper.outlinePrimary,
                                         child: SvgPicture.asset(
                                           "assets/images/img_pepicons_pencil_people.svg",
                                           width: 30.adaptSize,
                                           height: 30.adaptSize,
                                           color: Color(0XFF9B03D0),
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
                                  ]
                                ),
                              ),
                              
                          ],
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
