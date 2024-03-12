import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class BettingThreeBottomsheet extends StatelessWidget {
  BettingThreeBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: AppDecoration.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 90.h,
                  top: 2.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "Select Provider",
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          CustomSearchView(
            controller: searchController,
            hintText: "Search Provider",
          ),
          SizedBox(height: 26.v),
          _buildFrame(context),
          SizedBox(height: 8.v),
          _buildFrame1(context),
          SizedBox(height: 8.v),
          _buildFrame2(context),
          SizedBox(height: 8.v),
          _buildFrame3(context),
          SizedBox(height: 8.v),
          _buildFrame4(context),
          SizedBox(height: 8.v),
          _buildFrame5(context),
          SizedBox(height: 8.v),
          _buildFrame6(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 33.v,
            width: 35.h,
            margin: EdgeInsets.only(bottom: 8.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 10.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 12.v,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame6(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 23.v,
            width: 35.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
            ),
            child: Text(
              "SportyBet",
              style: CustomTextStyles.titleMediumOnPrimaryContainerBold,
            ),
          ),
          Spacer(),
          Container(
            height: 18.v,
            width: 24.h,
            margin: EdgeInsets.only(top: 4.v),
            decoration: BoxDecoration(
              border: Border.all(
                color: theme.colorScheme.primary,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
