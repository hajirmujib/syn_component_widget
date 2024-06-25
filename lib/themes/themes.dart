import 'package:flutter/material.dart';
import 'package:syn_common_widget/themes/themes.dart';

export 'app_icons.dart';
export 'colors.dart';
export 'typography.dart';

ThemeData themeLight() {
  return ThemeData.light().copyWith(
    // primaryColor: Color(0xFF007F80),
    backgroundColor: CommonColors.white,
    primaryColor: CommonColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CommonColors.lBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      subtitle1: TextStyle(fontSize: 16, color: CommonColors.xlBlack),
      bodyText1: TextStyle(fontSize: 13, color: CommonColors.xlBlack),
      bodyText2: TextStyle(fontSize: 14, color: CommonColors.xlBlack),
      caption: TextStyle(fontSize: 10, color: CommonColors.sGrey),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(CommonColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: CommonColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: CommonColors.tabNotSelected),
      labelColor: CommonColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: CommonColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: CommonColors.xlBlack,
      unselectedItemColor: CommonColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
  );
}

ThemeData themeDark() {
  return ThemeData.dark().copyWith(
    // primaryColor: Color(0xFF007F80),
    primaryColor: CommonColors.white,
    primaryColorDark: const Color(0xFF007F80),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: CommonColors.xlBlack),
      backgroundColor: Colors.white,
      elevation: 1,
      shadowColor: const Color(0xFFD9D9D9),
      titleTextStyle: AppTypography.appBarTitle,
      toolbarTextStyle: AppTypography.appBarTitle,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
      subtitle1: TextStyle(fontSize: 16, color: CommonColors.xlBlack),
      bodyText1: TextStyle(fontSize: 13, color: CommonColors.xlBlack),
      bodyText2: TextStyle(fontSize: 14, color: CommonColors.xlBlack),
      caption: TextStyle(fontSize: 10, color: CommonColors.gray),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(CommonColors.xlBlack),
      ),
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: CommonColors.tabNotSelected,
      unselectedLabelStyle: const TextStyle(color: CommonColors.tabNotSelected),
      labelColor: CommonColors.mBlue,
      labelStyle: AppTypography.smallSemiBold,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: CommonColors.xlBlack,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: CommonColors.xlBlack,
      unselectedItemColor: CommonColors.mGrey,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
