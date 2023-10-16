import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatapp_messenger/common/extensions/custom_theme_extension.dart';
import 'package:whatapp_messenger/common/utils/common_colors.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    colorScheme: const ColorScheme.dark(
      background: CommonColors.backgroundDark,
    ),
    scaffoldBackgroundColor: CommonColors.backgroundDark,
    extensions: [
      CustomThemeExtension.darkMode,
    ],
    appBarTheme: const AppBarTheme(
      backgroundColor: CommonColors.greyBackground,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: CommonColors.greyDark,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      iconTheme: IconThemeData(
        color: CommonColors.greyDark,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          color: CommonColors.greenLight,
          width: 2,
        ),
      ),
      unselectedLabelColor: CommonColors.greyDark,
      labelColor: CommonColors.greenDark,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: CommonColors.greenDark,
        foregroundColor: CommonColors.backgroundDark,
        splashFactory: NoSplash.splashFactory,
        elevation: 0,
        shadowColor: Colors.transparent,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: CommonColors.greyBackground,
      modalBackgroundColor: CommonColors.greyBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: CommonColors.greyBackground,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: CommonColors.greenDark,
      foregroundColor: Colors.white,
    ),
  );
}
