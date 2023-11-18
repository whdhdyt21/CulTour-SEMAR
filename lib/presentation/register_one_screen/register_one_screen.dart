import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:cultour/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RegisterOneScreen extends StatelessWidget {
  RegisterOneScreen({Key? key}) : super(key: key);

  TextEditingController logomapsOneController = TextEditingController();

  TextEditingController logomapsOneController1 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController logomapsOneController2 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.h, vertical: 29.v),
                    child: Column(children: [
                      SizedBox(height: 90.v),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgWayang1,
                                height: 90.v,
                                width: 74.h),
                            Text("CulTour",
                                style: CustomTextStyles
                                    .titleMediumSourceSerifProPrimary)
                          ]),
                      SizedBox(height: 10.v),
                      Text("Selamat Datang",
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 62.v),
                      _buildLogomapsOne(context),
                      SizedBox(height: 18.v),
                      _buildLogomapsOne1(context),
                      SizedBox(height: 18.v),
                      _buildEmail(context),
                      SizedBox(height: 18.v),
                      _buildLogomapsOne2(context),
                      SizedBox(height: 54.v),
                      _buildMasuk(context),
                      SizedBox(height: 23.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDaftar(context);
                          },
                          child: Text("Daftar",
                              style: CustomTextStyles.titleLargeRobotoMono
                                  .copyWith(
                                      decoration: TextDecoration.underline))),
                      const Spacer(),
                      CustomImageView(
                          imagePath: ImageConstant.imgE1,
                          height: 20.adaptSize,
                          width: 20.adaptSize),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgJa1,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(bottom: 4.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgWa1,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 5.h, bottom: 4.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgTa1,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 4.h)),
                            CustomImageView(
                                imagePath: ImageConstant.imgNga1,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin:
                                    EdgeInsets.only(left: 4.h, bottom: 4.v)),
                            CustomImageView(
                                imagePath: ImageConstant.imgH1,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 3.h, top: 4.v))
                          ]),
                      Text("Didamel Dening Tiyang Jawa Asli",
                          style: theme.textTheme.labelSmall)
                    ])))));
  }

  /// Section Widget
  Widget _buildLogomapsOne(BuildContext context) {
    return CustomTextFormField(
        controller: logomapsOneController,
        hintText: "Nama",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(13.h, 7.v, 16.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoMaps1,
                height: 23.adaptSize,
                width: 23.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildLogomapsOne1(BuildContext context) {
    return CustomTextFormField(
        controller: logomapsOneController1,
        hintText: "Nomor Telepon",
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 7.v, 17.h, 6.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoMaps126x18,
                height: 26.v,
                width: 18.h)),
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Alamat E-mail",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(13.h, 9.v, 16.h, 8.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoMaps123x23,
                height: 23.adaptSize,
                width: 23.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 40.v));
  }

  /// Section Widget
  Widget _buildLogomapsOne2(BuildContext context) {
    return CustomTextFormField(
        controller: logomapsOneController2,
        hintText: "Kata Sandi",
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(13.h, 8.v, 16.h, 9.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoMaps11,
                height: 23.adaptSize,
                width: 23.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 40.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildMasuk(BuildContext context) {
    return CustomElevatedButton(
        width: 231.h,
        text: "Masuk",
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.titleLargeRobotoMonoGray400,
        onPressed: () {
          onTapMasuk(context);
        });
  }

  /// Navigates to the guideContainer1Screen when the action is triggered.
  onTapMasuk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bottomBar);
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapTxtDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
