import 'package:flutter/material.dart';
import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:cultour/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  TextEditingController logomapsOneEditTextController = TextEditingController();
  TextEditingController logomapsOneEditTextController1 =
      TextEditingController();
  TextEditingController emailEditTextController = TextEditingController();
  TextEditingController logomapsOneEditTextController2 =
      TextEditingController();
  TextEditingController twentyEightEditTextController =
      TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode _namaFocusNode = FocusNode();
  final FocusNode _teleponFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _kataSandiFocusNode = FocusNode();
  final FocusNode _konfirmasiKataSandiFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 29.v),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/dash.png"),
                  ),
                  Text(
                    "CulTour",
                    style: CustomTextStyles.titleMediumSourceSerifProPrimary,
                  ),
                  SizedBox(height: 10.v),
                  Text("Selamat Datang", style: theme.textTheme.headlineLarge),
                  SizedBox(height: 40.v),
                  _buildLogomapsOneEditText(context),
                  SizedBox(height: 18.v),
                  _buildLogomapsOneEditText1(context),
                  SizedBox(height: 18.v),
                  _buildEmailEditText(context),
                  SizedBox(height: 18.v),
                  _buildLogomapsOneEditText2(context),
                  SizedBox(height: 18.v),
                  _buildTwentyEightEditText(context),
                  SizedBox(height: 34.v),
                  _buildDaftar(context),
                  SizedBox(height: 23.v),
                  GestureDetector(
                    onTap: () {
                      onTapTxtMasuk(context);
                    },
                    child: Text(
                      "Masuk",
                      style: CustomTextStyles.titleLargeRobotoMono.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
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
                    ],
                  ),
                  Text("Didamel Dening Tiyang Jawa Asli",
                      style: theme.textTheme.labelSmall),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogomapsOneEditText(BuildContext context) {
    return CustomTextFormField(
      focusNode: _namaFocusNode,
      onFieldSubmitted: (_) {
        _namaFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_teleponFocusNode);
      },
      controller: logomapsOneEditTextController,
      hintText: "Nama",
      textInputType: TextInputType.name,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(13.h, 7.v, 16.h, 10.v),
        child: Icon(
          Icons.people,
          size: 23.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 40.v),
    );
  }

  Widget _buildLogomapsOneEditText1(BuildContext context) {
    return CustomTextFormField(
      focusNode: _teleponFocusNode,
      onFieldSubmitted: (_) {
        _teleponFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_emailFocusNode);
      },
      controller: logomapsOneEditTextController1,
      hintText: "Nomor Telepon",
      textInputType: TextInputType.phone,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(13.h, 8.v, 16.h, 9.v),
        child: Icon(
          Icons.phone,
          size: 23.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 40.v),
    );
  }

  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      focusNode: _emailFocusNode,
      onFieldSubmitted: (_) {
        _emailFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_kataSandiFocusNode);
      },
      controller: emailEditTextController,
      hintText: "Alamat E-mail",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(13.h, 9.v, 16.h, 8.v),
        child: Icon(
          Icons.email,
          size: 23.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 40.v),
    );
  }

  Widget _buildLogomapsOneEditText2(BuildContext context) {
    return CustomTextFormField(
      focusNode: _kataSandiFocusNode,
      onFieldSubmitted: (_) {
        _kataSandiFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_konfirmasiKataSandiFocusNode);
      },
      controller: logomapsOneEditTextController2,
      hintText: "Kata Sandi",
      prefix: Container(
        margin: EdgeInsets.fromLTRB(13.h, 8.v, 16.h, 9.v),
        child: Icon(
          Icons.lock,
          size: 23.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(maxHeight: 40.v),
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildTwentyEightEditText(BuildContext context) {
  return CustomTextFormField(
    focusNode: _konfirmasiKataSandiFocusNode,
    onFieldSubmitted: (_) {
      // Pindah fokus ke area selain input field (menutup keyboard)
      _konfirmasiKataSandiFocusNode.unfocus(); // Menutup keyboard
    },
    controller: twentyEightEditTextController,
    hintText: "Konfirmasi Kata Sandi",
    textInputAction: TextInputAction.done,
    prefix: Container(
      margin: EdgeInsets.fromLTRB(13.h, 8.v, 16.h, 9.v),
      child: Icon(
        Icons.lock,
        size: 23.adaptSize,
      ),
    ),
    prefixConstraints: BoxConstraints(maxHeight: 40.v),
    obscureText: true,
    contentPadding: EdgeInsets.symmetric(vertical: 11.v),
  );
}

// Widget Daftar tetap sama
Widget _buildDaftar(BuildContext context) {
  return CustomElevatedButton(
    width: 231.h,
    text: "Daftar",
    buttonStyle: CustomButtonStyles.fillPrimary,
    buttonTextStyle: CustomTextStyles.titleLargeRobotoMonoGray400,
    onPressed: () {
      onTapDaftar(context);
    },
  );
}

  /// Navigates to the guideContainer1Screen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bottomBar);
  }

  /// Navigates to the registerOneScreen when the action is triggered.
  onTapTxtMasuk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerOneScreen);
  }
}
