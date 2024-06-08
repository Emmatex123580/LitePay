import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:litepay/core/format_string.dart';
import 'package:litepay/presentation/Electricity.dart';
import 'package:litepay/presentation/airtime.dart';
import 'package:litepay/presentation/buy_data_bundle.dart';
import 'package:litepay/presentation/cable_pay.dart';
import 'package:litepay/presentation/sign_in_screen.dart';
import 'package:litepay/presentation/transaction_history.dart';
import 'package:litepay/presentation/wallet_history.dart';
import 'package:litepay/widgets/add_money_bottomSheet.dart';
import 'package:litepay/widgets/service_action_container.dart';
import '../core/app_export.dart';
import '../widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {

  String retrievedValue = '';
  User? currentUser = FirebaseAuth.instance.currentUser;
  //This function gets the fullname of client
  Future<void> retrieveData() async {
    try {
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection("Users")
          .doc(currentUser!.uid)
          .get();
      Map<String,dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
      setState(() {
        retrievedValue = selectCharacters(data['username'], 15);
      });
    } catch (e) {
      setState(() {
        retrievedValue = '';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    retrieveData(); 
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.grey,
          backgroundColor: Colors.white,
          title: Text(
            "Home",
            style: theme.textTheme.titleSmall,
          ),
          centerTitle: true,
          actions: [
            CustomImageView(
            imagePath: ImageConstant.imgPhBellThin,
            height: 25.adaptSize,
            width: 25.adaptSize,
            onTap: () {
              // TODO: Implement an action
            },
          ),
          ],
          elevation: 0.0,
        ),

        drawer: BuildDrawer(context), // This widget function is located in the Widget folder

        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.white,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 22.v,
              ),
              child: Column(
                children: [
                  //TODO
                  _buildCard(context),
                  SizedBox(height: 60.v),
                  _buildServiceRow(context),
                  SizedBox(height: 90.v),
                  _buildEevents(),
                ],
              )
            ),
          ),
        ),
      ),
    );
  }
  
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${retrievedValue.toUpperCase()}",
                          style: theme.textTheme.titleSmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
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
                        SvgPicture.asset(
                          "assets/images/person.svg",
                          width: 30.adaptSize,
                          height: 30.adaptSize,
                          color: Color(0XFF9B03D0),
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
                          width: 30.adaptSize,
                          height: 30.adaptSize,
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
                        SvgPicture.asset(
                          "assets/images/lodge_a_complaint.svg",
                          width: 30.adaptSize,
                          height: 30.adaptSize,
                          color: Color(0XFF9B03D0),
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
                    onTap: () async{
                      await FirebaseAuth.instance.signOut();
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                        (route) => false,
                      );

                    },
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

  //The card with the amount balance Info
  Widget _buildCard(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 8),
    //height: 125.v,
    width: 320.h,
    decoration: BoxDecoration(
      color: Color(0xFF9B03D0),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallet Balance",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                Row(
                  children: [
                    Text(
                      "\u20A6 0.00",
                      style: CustomTextStyles.headlineMedium12,
                    ),
                    IconButton(
                      icon: Icon(Icons.visibility, size: 12.adaptSize, color: Colors.white),
                      onPressed: () {
                        //TODO
                      },
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bonus Balance",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                Row(
                  children: [
                    Text(
                      "\u20A6 0.00",
                      style: CustomTextStyles.headlineMedium12,
                    ),
                    IconButton(
                      icon: Icon(Icons.visibility, size: 12.adaptSize, color: Colors.white),
                      onPressed: () {
                        //TODO
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 15.v), // Adding some space between rows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {
                    //TODO
                    addMoneyBottomSheet(context);
                  },
                  child: Container(
                    height: 18.v,
                    width: 18.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFFFFF), width: 0.5.adaptSize),
                    ),
                    child: Icon(
                      Icons.add_card_outlined,
                      size: 12.5.adaptSize,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4), // Adding some space between icon and text
                Text(
                  "Add Money",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    //TODO
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>WalletHistory())
                    );
                  },
                  child: Container(
                    height: 18.v,
                    width: 18.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFFFFF), width: 0.5.adaptSize),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 12.5.adaptSize,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4), // Adding some space between icon and text
                Text(
                  "Wallet History",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    //TODO
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>TransactionHistory())
                    );
                  },
                  child: Container(
                    height: 18.v,
                    width: 18.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFFFFFF), width: 0.5.adaptSize),
                    ),
                    child: Icon(
                      Icons.history_outlined,
                      size: 12.5.adaptSize,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 4), // Adding some space between icon and text
                Text(
                  "Transaction History",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

  Widget _buildServiceRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4.h,right: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "What task would you like to perform?",
             style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 6.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainer(
                text: "Airtime",
                icon: SvgPicture.asset(
                  "assets/images/img_airtime.svg",
                   color: Color(0xFF9B03D0),
                ),
              ),
              CustomContainer(
                text: "Data",
                icon: SvgPicture.asset(
                  "assets/images/data.svg",
                  width: 6.5.adaptSize,
                  height: 6.5.adaptSize,
                   color: Color(0xFF9B03D0),
                ),
              ),
              CustomContainer(
                text: "Cable Sub",
                icon:  SvgPicture.asset(
                  "assets/images/cable_sub.svg",
                   color: Color(0xFF9B03D0),
                ),
              ),
              CustomContainer(
                text: "Mega Data",
                icon: SvgPicture.asset(
                  "assets/images/data.svg",
                   color: Color(0xFF9B03D0),
                ),
              )
            ]
          ),
          SizedBox(height: 28.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomContainer(
                text: "Betting",
                icon: SvgPicture.asset(
                  "assets/images/img_ph_soccer_ball_light.svg",
                   color: Color(0xFF9B03D0),
                ),
              ),
              CustomContainer(
                text: "Educational Pin",
                icon: SvgPicture.asset(
                  "assets/images/educational.svg",
                   color: Color(0xFF9B03D0),
                ),
              ),
              CustomContainer(
                text: "Electricity",
                icon: SvgPicture.asset(
                "assets/images/electricity.svg",
                  color: Color(0xFF9B03D0),
              ),
              ),
              CustomContainer(
                text: "Join affiliate",
                icon: SvgPicture.asset(
                  "assets/images/img_pepicons_pencil_people.svg",
                   color: Color(0xFF9B03D0),
                ),
              )
            ]
          )
        ],
      )
    );
  }

  Widget _buildEevents() {
    return Column(
      children: [
        InkWell(
          onTap: () {}, //TODO: Perform an action on press
          child: Row( 
            children: [
              Container(
                width: 44.h,
                height: 44.v,
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(
                  "assets/images/img_uil_money_withdraw.svg",
                  width: 24.adaptSize,
                  height: 24.adaptSize,
                ),
                decoration: BoxDecoration(
                  color: Color(0XFFE8BFF7),
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              SizedBox(width: 24.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Withdraw Bonus",
                    style: theme.textTheme.headlineMedium
                  ),
                  Text(
                    "Withdraw to wallet or bank account",
                    style: theme.textTheme.bodySmall
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 40.v),
        InkWell(
          child: Row(
            children: [
              Container(
                width: 44.h,
                height: 44.v,
                child: SvgPicture.asset(
                  "assets/images/lodge_a_complaint.svg",
                  width: 24.adaptSize,
                  height: 24.adaptSize,
                ),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0XFFE8BFF7),
                  borderRadius: BorderRadius.circular(5)
                )
              ),
              SizedBox(width: 24.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lodge a complaint",
                    style: theme.textTheme.headlineMedium
                  ),
                  Text(
                    "(Whatsapp link)",
                    style: theme.textTheme.bodySmall
                  ),
                ],
              )
            ],
          )
        )
      ],
    );
  }
}
 