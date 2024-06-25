import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/themes.dart';

export 'app_icons.dart';
export 'colors.dart';
export 'typography.dart';

ThemeData themeLight() {
  return ThemeData.light().copyWith(
    // primaryColor: Color(0xFF007F80),
    backgroundColor: AppColors.white,
    primaryColor: AppColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.lBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      subtitle1: TextStyle(fontSize: 16, color: AppColors.xlBlack),
      bodyText1: TextStyle(fontSize: 13, color: AppColors.xlBlack),
      bodyText2: TextStyle(fontSize: 14, color: AppColors.xlBlack),
      caption: TextStyle(fontSize: 10, color: AppColors.sGrey),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: AppColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: AppColors.tabNotSelected),
      labelColor: AppColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.xlBlack,
      unselectedItemColor: AppColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
  );
}

ThemeData themeDark() {
  return ThemeData.dark().copyWith(
    // primaryColor: Color(0xFF007F80),
    primaryColor: AppColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: AppColors.xlBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      subtitle1: TextStyle(fontSize: 16, color: AppColors.xlBlack),
      bodyText1: TextStyle(fontSize: 13, color: AppColors.xlBlack),
      bodyText2: TextStyle(fontSize: 14, color: AppColors.xlBlack),
      caption: TextStyle(fontSize: 10, color: AppColors.gray),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(AppColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: AppColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: AppColors.tabNotSelected),
      labelColor: AppColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.xlBlack,
      unselectedItemColor: AppColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
