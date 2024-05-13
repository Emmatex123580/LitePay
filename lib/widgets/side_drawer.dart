//Drawer widget section
  import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:litepay/theme/theme_helper.dart';

//Side drawer at the Home Page
Widget BuildDrawer(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;
  return Container(
    width: screenWidth * 0.85, 
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(20.0),
      bottomRight: Radius.circular(20.0),
      ),
    ),
    child: Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.horizontal(right: Radius.circular(15))),
      child: ListView(
      padding: EdgeInsets.only(left: 24.0),
      children: <Widget>[
        SizedBox(height: 27.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: ()=>Navigator.pop(context)
            )]
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              children: [
                SizedBox(
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/img_ellipse_116.png'),
                        radius: 32,
                      ),
                      Positioned(
                        right: -0,
                        bottom: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0XFF9B03D0),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            color:  Color(0XFF9B03D0),
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 15,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              // TODO: Implement an action
                            },
                          ),
                        ),
                      ),
                    ]
                  ),
                  ),
                    
                  SizedBox(width: screenWidth * 0.02),
                  Column(
                    children: [
                      Text(
                        "Nwadike Chinaza \nAbigail",
                        style: theme.textTheme.titleSmall,
                      ),
                      Text(
                        "Wallet ID: 68JDGH90",
                        style: TextStyle(fontSize: 15)
                      ),

                    ],
                  )
                ]),
                SizedBox(height: screenHeight * 0.06),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_nav_pricing.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Pricing",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_outlined,
                        size: 30,
                        color: Color(0XFF9B03D0),
                        weight: 0.0008,
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_profile.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "About LitePay",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_material_symbol_primary.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Contact Us",
                          style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.forum_outlined,
                        size: 30,
                        color:  Color(0XFF9B03D0)
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Lodge a Complaint",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_nav_referrals.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Referals",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/images/img_streamline_web.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Visit a Website",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        ) 
                      )
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.02),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                        SvgPicture.asset(
                        "assets/images/img_settings.svg",
                        width: 30,
                        height: 30,
                        color: Color(0XFF9B03D0),
                      ),
                      SizedBox(width: screenWidth * 0.1),
                      Text(
                        "Airtime Funding",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Poppins",
                          color: Color(0XFF9B03D0),
                          fontWeight: FontWeight.w400
                        )
                      ),
                      
                    ]
                  )
                ),
                SizedBox(height: screenHeight * 0.1),
                InkWell(
                  onTap: (){}, //TODO: Implement the ontap function
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        size: 30,
                        color: Colors.red,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontFamily: "Poppins", 
                          fontWeight: FontWeight.w400                             )
                      )
                    ]
                  ),
                )
              ]
              ),
            )
    );
              
  }