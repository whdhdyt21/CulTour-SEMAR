import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OpenScreen extends StatelessWidget {
  const OpenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(children: [
                  const Spacer(flex: 66),
                  SizedBox(
                      height: 150.v,
                      width: 251.h,
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: EdgeInsets.only(right: 25.h),
                                child: Text("CulTour\nSemar",
                                    style: CustomTextStyles.headlineLarge_1))),
                        Container(
                          margin: const EdgeInsets.only(top: 0),
                          height: 180,
                          width: 100,
                          child: Image.asset("assets/dash.png"),
                        ),
                      ])),
                  SizedBox(height: 85.v),
                  CustomElevatedButton(
                      width: 128.h,
                      text: "Go!",
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle:
                          CustomTextStyles.titleLargeRobotoMonoGray400,
                      onPressed: () {
                        onTapDaftar(context);
                      }),
                  const Spacer(flex: 33),
                  CustomImageView(
                      imagePath: ImageConstant.imgE1,
                      height: 20.adaptSize,
                      width: 20.adaptSize),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgJa1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(bottom: 4.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgWa1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 5.h, bottom: 4.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgTa1,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 4.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imgNga1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 4.h, bottom: 4.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgH1,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                        margin: EdgeInsets.only(left: 3.h, top: 4.v))
                  ]),
                  Text("Didamel Dening Tiyang Jawa Asli",
                      style: theme.textTheme.labelSmall)
                ]))));
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
