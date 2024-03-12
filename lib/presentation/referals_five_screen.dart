import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ReferalsFiveScreen extends StatelessWidget {
  ReferalsFiveScreen({Key? key}) : super(key: key);

  TextEditingController firstNameController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController surnameController = TextEditingController();

  TextEditingController nINBVNvalueController = TextEditingController();

  TextEditingController selectNetworkController = TextEditingController();

  TextEditingController lGoforiginvalueController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 35.v),
                            child: Column(children: [
                              SizedBox(height: 6.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgArrowLeftOnprimarycontainer,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        onTap: () {
                                          onTapImgArrowLeft(context);
                                        }),
                                    Padding(
                                        padding: EdgeInsets.only(left: 118.h),
                                        child: Text("KYC",
                                            style: CustomTextStyles
                                                .titleMediumOnPrimaryContainer_1))
                                  ])),
                              SizedBox(height: 51.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSettingsBlack900,
                                  height: 66.adaptSize,
                                  width: 66.adaptSize),
                              SizedBox(height: 19.v),
                              Text("Select Passport photograph",
                                  style: CustomTextStyles.titleSmall15),
                              SizedBox(height: 2.v),
                              Text("(Max size  of 100kb)",
                                  style: CustomTextStyles.bodyMedium13),
                              SizedBox(height: 50.v),
                              _buildFirstName(context),
                              SizedBox(height: 16.v),
                              _buildName(context),
                              SizedBox(height: 16.v),
                              _buildSurname(context),
                              SizedBox(height: 16.v),
                              _buildNINBVNvalue(context),
                              SizedBox(height: 16.v),
                              _buildSelectNetwork(context),
                              SizedBox(height: 16.v),
                              _buildLGoforiginvalue(context),
                              SizedBox(height: 16.v),
                              CustomDropDown(
                                  icon: Container(
                                      margin: EdgeInsets.fromLTRB(
                                          30.h, 9.v, 12.h, 9.v),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowdown,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize)),
                                  hintText: "Gender",
                                  items: dropdownItemList,
                                  contentPadding: EdgeInsets.only(
                                      left: 12.h, top: 8.v, bottom: 8.v),
                                  borderDecoration:
                                      DropDownStyleHelper.fillGray,
                                  filled: true,
                                  fillColor: appTheme.gray100,
                                  onChanged: (value) {})
                            ]))))),
            bottomNavigationBar: _buildSubmit(context)));
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return CustomTextFormField(
        controller: firstNameController,
        hintText: "First Name",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return CustomTextFormField(
        controller: nameController,
        hintText: "Middle Name",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildSurname(BuildContext context) {
    return CustomTextFormField(
        controller: surnameController,
        hintText: "SurName",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildNINBVNvalue(BuildContext context) {
    return CustomTextFormField(
        controller: nINBVNvalueController,
        hintText: "NIN/BVN",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildSelectNetwork(BuildContext context) {
    return CustomTextFormField(
        controller: selectNetworkController,
        hintText: "State of Origin",
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildLGoforiginvalue(BuildContext context) {
    return CustomTextFormField(
        controller: lGoforiginvalueController,
        hintText: "LG of origin",
        textInputAction: TextInputAction.done,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
        borderDecoration: TextFormFieldStyleHelper.fillGray,
        filled: true,
        fillColor: appTheme.gray100);
  }

  /// Section Widget
  Widget _buildSubmit(BuildContext context) {
    return CustomElevatedButton(
        height: 40.v,
        width: 233.h,
        text: "Submit",
        margin: EdgeInsets.only(left: 64.h, right: 63.h, bottom: 48.v),
        buttonStyle: CustomButtonStyles.fillPurpleA,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary);
  }

  /// Navigates back to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
