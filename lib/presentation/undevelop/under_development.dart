import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
// import 'package:cultour/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class Un_Develop extends StatelessWidget {
  const Un_Develop({Key? key}) : super(key: key);

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
                                child: Text("CulTour\nScan",
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
                    onPressed: () async {
                      final Uri uri = Uri.parse('https://qrcodescan.in/');
                      if (!await launchUrl(uri,
                          mode: LaunchMode.externalApplication)) {
                        throw "Can not launch url";
                      }
                    },
                  ),
                  const Spacer(flex: 33),
                ]))));
  }

  //ketika go di klik akan mengarah ke halaman url: https://qrcodescan.in/
}
