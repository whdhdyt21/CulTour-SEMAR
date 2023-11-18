import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Headline style
  static get headlineLarge_1 => theme.textTheme.headlineLarge!;
  // Label text style
  static get labelLargeCommissionerOnPrimary =>
      theme.textTheme.labelLarge!.commissioner.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeRobotoMonoGray400 =>
      theme.textTheme.labelLarge!.robotoMono.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeRobotoMono =>
      theme.textTheme.titleLarge!.robotoMono.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRobotoMonoGray400 =>
      theme.textTheme.titleLarge!.robotoMono.copyWith(
        color: appTheme.gray400,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumSourceSerifProPrimary =>
      theme.textTheme.titleMedium!.sourceSerifPro.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w900,
      );
  static get titleSmallCommissionerPrimary =>
      theme.textTheme.titleSmall!.commissioner.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmallCommissionerRed300 =>
      theme.textTheme.titleSmall!.commissioner.copyWith(
        color: appTheme.red300,
        fontSize: 14.fSize,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 14.fSize,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get robotoMono {
    return copyWith(
      fontFamily: 'Roboto Mono',
    );
  }


  TextStyle get sourceSerifPro {
    return copyWith(
      fontFamily: 'Source Serif Pro',
    );
  }

  TextStyle get commissioner {
    return copyWith(
      fontFamily: 'Commissioner',
    );
  }
}
