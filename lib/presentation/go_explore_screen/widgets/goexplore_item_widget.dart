import 'package:cultour/core/app_export.dart';
import 'package:cultour/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GoexploreItemWidget extends StatelessWidget {
  const GoexploreItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 161.h,
            margin: EdgeInsets.only(bottom: 13.v),
            child: Text(
              "KASUNANAN SURAKARTA HADININGRAT",
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.24,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 98.h,
              top: 18.v,
            ),
            child: Column(
              children: [
                CustomElevatedButton(
                  height: 27.v,
                  width: 73.h,
                  text: "Go!",
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 20.v,
                  width: 120.h,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBintang459,
                        height: 20.v,
                        width: 103.h,
                        alignment: Alignment.centerRight,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "4,4",
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
