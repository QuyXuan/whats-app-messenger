import 'package:flutter/material.dart';
import 'package:whatapp_messenger/common/utils/common_colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final Color? circleImageColor;
  final Color? greyColor;
  final Color? blueColor;
  final Color? langBtnBgColor;
  final Color? langBtnHightLightColor;
  final Color? authAppBarTextColor;
  final Color? photoIconBgColor;
  final Color? photoIconColor;

  static const lightMode = CustomThemeExtension(
    circleImageColor: Color(0xFF25D366),
    greyColor: CommonColors.greyLight,
    blueColor: CommonColors.blueLight,
    langBtnBgColor: Color(0xFFF7F8FA),
    langBtnHightLightColor: Color(0xFFE8E8ED),
    authAppBarTextColor: CommonColors.greenLight,
    photoIconBgColor: Color(0xFFF0F2F3),
    photoIconColor: Color(0xFF9DAAB3),
  );

  static const darkMode = CustomThemeExtension(
    circleImageColor: CommonColors.greenDark,
    greyColor: CommonColors.greyDark,
    blueColor: CommonColors.blueDark,
    langBtnBgColor: Color(0xFF182229),
    langBtnHightLightColor: Color(0xFF09141A),
    authAppBarTextColor: CommonColors.greenDark,
    photoIconBgColor: Color(0xFF283339),
    photoIconColor: Color(0xFF61717B),
  );

  const CustomThemeExtension({
    this.circleImageColor,
    this.greyColor,
    this.blueColor,
    this.langBtnBgColor,
    this.langBtnHightLightColor,
    this.authAppBarTextColor,
    this.photoIconBgColor,
    this.photoIconColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? circleImageColor,
    Color? greyColor,
    Color? blueColor,
    Color? langBtnBgColor,
    Color? langBtnHightLightColor,
    Color? authAppBarTextColor,
    Color? photoIconBgColor,
    Color? photoIconColor,
  }) {
    return CustomThemeExtension(
      circleImageColor: circleImageColor ?? this.circleImageColor,
      greyColor: greyColor ?? this.greyColor,
      blueColor: blueColor ?? this.blueColor,
      langBtnBgColor: langBtnBgColor ?? this.langBtnBgColor,
      langBtnHightLightColor:
          langBtnHightLightColor ?? this.langBtnHightLightColor,
      authAppBarTextColor: authAppBarTextColor ?? this.authAppBarTextColor,
      photoIconBgColor: photoIconBgColor ?? this.photoIconBgColor,
      photoIconColor: photoIconColor ?? this.photoIconColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) {
      return this;
    }
    return CustomThemeExtension(
      circleImageColor: Color.lerp(circleImageColor, other.circleImageColor, t),
      greyColor: Color.lerp(greyColor, other.greyColor, t),
      blueColor: Color.lerp(blueColor, other.blueColor, t),
      langBtnBgColor: Color.lerp(langBtnBgColor, other.langBtnBgColor, t),
      langBtnHightLightColor:
          Color.lerp(langBtnHightLightColor, other.langBtnHightLightColor, t),
      authAppBarTextColor:
          Color.lerp(authAppBarTextColor, other.authAppBarTextColor, t),
      photoIconBgColor: Color.lerp(photoIconBgColor, other.photoIconBgColor, t),
      photoIconColor: Color.lerp(photoIconColor, other.photoIconColor, t),
    );
  }
}
