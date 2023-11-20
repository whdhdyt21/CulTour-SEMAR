import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/app_bar/appbar_leading_image.dart'; 
import 'package:cultour/widgets/app_bar/appbar_title.dart';
import 'package:cultour/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cultour/widgets/app_bar/custom_app_bar.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class GuideContainerPage extends StatelessWidget {
  const GuideContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
Widget build(BuildContext context) {
  mediaQueryData = MediaQuery.of(context);

  return SafeArea(
    child: Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 7.h,
          vertical: 18.v,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10.v),
              Text(
                "Tour Guide",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 38.v),
              SizedBox(height: 44.v),
              _buildChat(context),
            ],
          ),
        ),
      ),
    ),
  );
}


  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 86.v,
      leadingWidth: 81.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWayang1,
        margin: EdgeInsets.only(
          left: 37.h,
          top: 24.v,
        ),
      ),
      title: AppbarTitle(
        text: "CulTour",
        margin: EdgeInsets.only(
          left: 0.h,
          top: 24.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTwemojiFlagIndonesia,
          margin: EdgeInsets.fromLTRB
            (0.h, 24.v, 37.h, 0.v),
        ),
      ],
    );
  }

  Widget _buildChat(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.img6b61ce9b3d614,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dinda Ayu Anggraeni",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422002",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 150.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6285775459636');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImg49901,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Muhammad Nafis Hafi",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422003",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 200.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+62895367257077');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgImg20221206141855,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Zenia Kumala Rizka",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422005",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 150.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6285329741995');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgPassFoto1,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yoga Hernawan",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422007",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 200.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6288211405440');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMg14231,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Wahid Hidayat",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422016",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 250.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6281515914367');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.Uut,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Uut Milanda",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422001",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 150.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6285329741995');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0), // Add some space between the containers
        Container(
          margin: EdgeInsets.only(left: 6.h),
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 19.v,
          ),
          decoration: AppDecoration.outlineBlackF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 54.adaptSize,
                width: 54.adaptSize,
                margin: EdgeInsets.only(
                  left: 7.h,
                  bottom: 4.v,
                ),
                decoration: AppDecoration.fillGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder27,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.Rizqi,
                  height: 54.adaptSize,
                  width: 54.adaptSize,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  bottom: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rizqi Fitriyani",
                      style: CustomTextStyles.titleSmallCommissionerRed300,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "#4611422004",
                      style: CustomTextStyles.labelLargeCommissionerOnPrimary,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      "Rp 150.000,00/jam",
                      style: theme.textTheme.labelLarge,
                    ), // Add any additional information here
                  ],
                ),
              ),
              const Spacer(),
              CustomElevatedButton(
                height: 30.v,
                width: 80.h,
                text: "Chat",
                margin: EdgeInsets.symmetric(vertical: 14.v),
                onPressed: () async {
                  final Uri uri = Uri.parse('http://wa.me/+6285329741995');
                  if (!await launchUrl(uri,
                      mode: LaunchMode.externalApplication)) {
                    throw "Can not launch url";
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
