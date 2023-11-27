import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/app_bar/appbar_leading_image.dart';
import 'package:cultour/widgets/app_bar/appbar_title.dart';
import 'package:cultour/widgets/app_bar/appbar_trailing_image.dart';
import 'package:cultour/widgets/app_bar/custom_app_bar.dart';
// import 'package:cultour/widgets/custom_bottom_bar.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:cultour/widgets/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class GoExploreScreen extends StatelessWidget {
  GoExploreScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  late MediaQueryData mediaQueryData; // Inisialisasi mediaQueryData

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 5.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 34.v),
              Text(
                "CulTour Explore",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 31.v),
              _buildGoStack(context),
              SizedBox(height: 10.v),
              _buildGoStack2(context),
              SizedBox(height: 10.v),
              _buildGoStack3(context),
              SizedBox(height: 10.v),
              _buildGoStack4(context),
              SizedBox(height: 10.v),
              _buildGoStack1(context),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
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
        text: "CulTour\nSemar",
        margin: EdgeInsets.only(
          left: 0.h,
          top: 24.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgTwemojiFlagIndonesia,
          margin: EdgeInsets.fromLTRB(0.h, 24.v, 37.h, 0.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoStack(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle9,
            height: 113.v,
            width: 408.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 11.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "KASUNANAN\nSURAKARTA\nHADININGRAT",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.24,
                            fontSize: 16.v,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Desc",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://pariwisatasolo.surakarta.go.id/destinations/keraton-surakarta-hadiningrat/');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Place",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://maps.app.goo.gl/k12hB9JwKV3QTnFB6');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 119.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left:
                                      40.h), // Adjust the left margin as needed
                              child: Text(
                                "4,5",
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBintang459,
                          ),
                          CustomRatingBar(
                            alignment: Alignment.centerRight,
                            initialRating: 0,
                            itemCount: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoStack1(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle8,
            height: 113.v,
            width: 408.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 11.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "CANDI\nBOROBUDUR",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.24,
                            fontSize: 16.v,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Desc",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://borobudurpark.com/temple/borobudur/');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Place",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://maps.app.goo.gl/Cy6iqj6EkF8sMgaa6');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 119.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left:
                                      40.h), // Adjust the left margin as needed
                              child: Text(
                                "4,5",
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBintang459,
                          ),
                          CustomRatingBar(
                            alignment: Alignment.centerRight,
                            initialRating: 0,
                            itemCount: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoStack2(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle7,
            height: 113.v,
            width: 408.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 11.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "KLENTENG\nSAM PO KONG",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleMedium!.copyWith(
                            height: 1.24,
                            fontSize: 16.v,
                          ),
                        ),
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Desc",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://visitjawatengah.jatengprov.go.id/id/regency/kota-semarang/destinasi-wisata/klenteng-sam-poo-kong');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                      CustomElevatedButton(
                        height: 27.v,
                        width: 80.h,
                        text: "Go Place",
                        margin: EdgeInsets.only(
                          left: 10.h,
                          top: 6.v,
                          bottom: 11.v,
                        ),
                        onPressed: () async {
                          final Uri uri = Uri.parse(
                              'https://maps.app.goo.gl/2TEjYuUnySopF7oS7');
                          if (!await launchUrl(uri,
                              mode: LaunchMode.externalApplication)) {
                            throw "Can not launch url";
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 119.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(
                                  left:
                                      40.h), // Adjust the left margin as needed
                              child: Text(
                                "4,5",
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBintang459,
                          ),
                          CustomRatingBar(
                            alignment: Alignment.centerRight,
                            initialRating: 0,
                            itemCount: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoStack3(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle6,
            height: 113.v,
            width: 408.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 11.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 138.h,
                          child: Text(
                            "LAWANG\nSEWU SEMARANG",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.24,
                              fontSize: 16.v,
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          height: 27.v,
                          width: 73.h,
                          text: "Go!",
                          margin: EdgeInsets.only(
                            left: 144.h,
                            top: 6.v,
                            bottom: 11.v,
                          ),
                          onPressed: () async {
                            final Uri uri = Uri.parse(
                                'https://maps.app.goo.gl/Dnd1heFPuH7pjcBj9');
                            if (!await launchUrl(uri,
                                mode: LaunchMode.externalApplication)) {
                              throw "Can not launch url";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 119.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "4,5",
                              style: CustomTextStyles.titleSmallOnPrimary,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBintang459,
                          ),
                          CustomRatingBar(
                            alignment: Alignment.centerRight,
                            initialRating: 0,
                            itemCount: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoStack4(BuildContext context) {
    return SizedBox(
      height: 113.v,
      width: 408.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5,
            height: 113.v,
            width: 408.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 18.h,
                right: 11.h,
                bottom: 11.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 24.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 138.h,
                          child: Text(
                            "KOTA LAMA\nSEMARANG",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium!.copyWith(
                              height: 1.24,
                              fontSize: 16.v,
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          height: 27.v,
                          width: 73.h,
                          text: "Go!",
                          margin: EdgeInsets.only(
                            left: 144.h,
                            top: 6.v,
                            bottom: 11.v,
                          ),
                          onPressed: () async {
                            final Uri uri = Uri.parse(
                                'https://maps.app.goo.gl/fKwQjRKrz4k9Gx7K9');
                            if (!await launchUrl(uri,
                                mode: LaunchMode.externalApplication)) {
                              throw "Can not launch url";
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: 19.v,
                      width: 119.h,
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "4,5",
                              style: CustomTextStyles.titleSmallOnPrimary,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgBintang459,
                          ),
                          CustomRatingBar(
                            alignment: Alignment.centerRight,
                            initialRating: 0,
                            itemCount: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  /// Section Widget
//   Widget _buildBottomBar(BuildContext context) {
//     return CustomBottomBar(
//       onChanged: (BottomBarEnum type) {
//         Navigator.pushNamed(
//             navigatorKey.currentContext!, getCurrentRoute(type));
//       },
//     );
//   }

//   ///Handling route based on bottom click actions
//   String getCurrentRoute(BottomBarEnum type) {
//     switch (type) {
//       case BottomBarEnum.Guide:
//         return "/";
//       case BottomBarEnum.Jelajah:
//         return AppRoutes.goExploreScreen;
//       case BottomBarEnum.Pindai:
//         return "/";
//       case BottomBarEnum.Kuis:
//         return "/";
//       default:
//         return "/";
//     }
//   }

//   ///Handling page based on route
//   Widget getCurrentPage(String currentRoute) {
//     switch (currentRoute) {
//       case AppRoutes.goExploreScreen:
//         return GoExploreScreen();
//       default:
//         return DefaultWidget();
//     }
//   }
// }
