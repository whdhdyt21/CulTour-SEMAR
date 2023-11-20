// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class Un_Develop extends StatelessWidget {
//   const Un_Develop({Key? key}) : super(key: key);

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: const Color(0xFFAA8B56),
//     body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               margin: const EdgeInsets.only(top: 20),
//               height: 150,
//               width: 150,
//               child: Image.asset("../assets/GrupLogo.png"),
//             ),
//           //const SizedBox(height: 50),
//             RichText(
//               textAlign: TextAlign.center,
//               text: const TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'CulTour QR',
//                     style: TextStyle(
//                       color: Color(0xFF3D2309),
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: Text(
//                 'Masih dalam tahap pengembangan:)',
//                 style: TextStyle(
//                   color: Color(0xFF3D2309),
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             const SizedBox(height: 25),
//           ],
//         ),
//       ),
//   );
// }

// }
import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
// import 'package:cultour/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
                      ),
                  const Spacer(flex: 33),
                 
                ]))));
  }

  /// Navigates to the registerScreen when the action is triggered.
  onTapDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registerScreen);
  }
}
