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

  final FocusNode _namaFocusNode = FocusNode();
  final FocusNode _teleponFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _kataSandiFocusNode = FocusNode();

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
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 29.v),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 150,
                      width: 150,
                      child: Image.asset("assets/dash.png"),
                    ),
                    Text("CulTour Semar",
                        style:
                            CustomTextStyles.titleMediumSourceSerifProPrimary),
                  ],
                ),
                SizedBox(height: 10.v),
                Text("Selamat Datang", style: theme.textTheme.headlineLarge),
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
                          .copyWith(decoration: TextDecoration.underline)),
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
                        margin: EdgeInsets.only(left: 3.h, top: 4.v)),
                  ],
                ),
                Text("Didamel Dening Tiyang Jawa Asli",
                    style: theme.textTheme.labelSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLogomapsOne(BuildContext context) {
    return CustomTextFormField(
      focusNode: _namaFocusNode,
      onFieldSubmitted: (_) {
        _namaFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_teleponFocusNode);
      },
      controller: logomapsOneController,
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

  Widget _buildLogomapsOne1(BuildContext context) {
    return CustomTextFormField(
      focusNode: _teleponFocusNode,
      onFieldSubmitted: (_) {
        _teleponFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_emailFocusNode);
      },
      controller: logomapsOneController1,
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

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      focusNode: _emailFocusNode,
      onFieldSubmitted: (_) {
        _emailFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_kataSandiFocusNode);
      },
      controller: emailController,
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

  Widget _buildLogomapsOne2(BuildContext context) {
    return CustomTextFormField(
      focusNode: _kataSandiFocusNode,
      onFieldSubmitted: (_) {
        _kataSandiFocusNode.unfocus();
      },
      controller: logomapsOneController2,
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

  Widget _buildMasuk(BuildContext context) {
    return CustomElevatedButton(
      width: 231.h,
      text: "Masuk",
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleLargeRobotoMonoGray400,
      onPressed: () {
        onTapMasuk(context);
      },
    );
  }

  onTapMasuk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bottomBar);
  }

  onTapTxtDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
