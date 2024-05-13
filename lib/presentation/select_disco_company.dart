import 'package:flutter/material.dart';
import 'package:litepay/core/app_export.dart';
import 'package:litepay/widgets/custom_outlined_button.dart';

class SelectDiscoCompany extends StatefulWidget {
  const SelectDiscoCompany({super.key});

  @override
  State<SelectDiscoCompany> createState() => _SelectDiscoCompanyState();
}

class _SelectDiscoCompanyState extends State<SelectDiscoCompany> {
  TextEditingController search_controller = TextEditingController();//Holds the text in the earch field
  List<String>  disco_company  = ["Ikeja", "Eko", "Abuja", "Enugu", "Kano", "PortHarcourt", "Ibadan", "Benin", "Kaduna", "Yola"];
  List<String>  disco_comppany_loco = ["img_image_1.png", "img_image2.png", "img_image3.png", "img_image5.png", "img_image4.png",
  "img_image6.png", "img_image7.png", "img_image10.png", "img_image12.png", "img_image11.png"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          elevation: 0.0,
        ),
        body: Padding(
          padding: EdgeInsets.only(top:10.v, left:24.v, right:24.v),
          child: Column(
            children: [

               Container(  
                padding: EdgeInsets.only(left:8.h,  top:4.v,  bottom:4.v),
                height: 34.v,
                decoration: BoxDecoration(
                  color:  Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,  size:18),
                    SizedBox(width:8.h),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                          hintStyle:  theme.textTheme.labelSmall,
                        ),
                        cursorColor:  Colors.black
                      ),
                    )
                  ]
                )
              ),
              SizedBox(height: 16.v),
              Expanded(
                child: ListView.builder(
                  itemCount:  10,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 43.7.v,
                      width:320.h,
                      padding: EdgeInsets.all(8.0),
                      margin: EdgeInsets.only(bottom: 4.v, top: 4.v),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset("assets/images/${disco_comppany_loco[index]}", width:28.h, height: 19.8.v),
                            SizedBox(width: 8.h),
                            Text(
                              "${disco_company[index]} electricity",
                              style: TextStyle(
                                fontSize: 12, 
                                fontWeight: FontWeight.w400, 
                                fontFamily:"Poppins", 
                                color:Colors.black
                              ),
                            )
                          ]
                        ),
                        style: CustomButtonStyles.outlinePrimaryTL5,
                      ),
                    );
                  }
                )
              ),
            ],
          )
        )
      )
    );
  }
}