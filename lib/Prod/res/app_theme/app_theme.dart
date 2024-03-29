import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'dimensions.dart';


   /// Created by Waqas Khurshid on 12/09/2023.

ThemeData appThemeProd() {
  return ThemeData(
    useMaterial3: false,
    fontFamily: GoogleFonts.inter().toString(),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.red,
        brightness: Brightness.light,
      ),
    /// AppBar Theme
    appBarTheme: AppBarTheme(
      //color: AppColors.appBar,
      centerTitle: true,
      backgroundColor: Get.isDarkMode ? AppColors.appBar  : AppColors.appBar,
      elevation: AppDimensions.appBarElevation,
      systemOverlayStyle:  SystemUiOverlayStyle(
        statusBarColor: Get.isDarkMode ? AppColors.primary  : AppColors.primary,
      ),
      titleTextStyle: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 15.sp,
          color: Get.isDarkMode ? AppColors.secondary : AppColors.primary),
      iconTheme:  IconThemeData(
        color: Get.isDarkMode ? AppColors.secondary : AppColors.secondary,
      ),
    ),

   /// Titles And Text Theme
      textTheme:  TextTheme(
        ///Display Large Style
        displayLarge: TextStyle(
            fontSize: 15.sp, fontWeight: FontWeight.w600, color: Get.isDarkMode ? AppColors.secondary : AppColors.secondary),
        displayMedium: TextStyle(
            fontSize: 22.sp, fontWeight: FontWeight.w700, color: Get.isDarkMode ?  AppColors.title : AppColors.title),
        displaySmall: TextStyle(
            fontSize: 19.sp, fontWeight: FontWeight.w700, color: Get.isDarkMode ?  AppColors.title : AppColors.title),

        /// Display Titles Style
        titleLarge: TextStyle(
            fontSize: 20.sp, fontWeight: FontWeight.w700, color: Get.isDarkMode ?  AppColors.title : AppColors.title),
        titleMedium: TextStyle(
            fontSize: 18.sp, fontWeight: FontWeight.w600, color: Get.isDarkMode ?  AppColors.title : AppColors.title),
        titleSmall: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w500, color: Get.isDarkMode ?  AppColors.title : AppColors.title),

        /// Display Body Style
        bodyLarge: TextStyle(
            fontSize: 16.sp, fontWeight: FontWeight.w400, color: Get.isDarkMode ?  AppColors.title : AppColors.title),
        bodyMedium: TextStyle(
            fontSize: 12.sp, fontWeight: FontWeight.w400, color: Get.isDarkMode ?  AppColors.title : AppColors.title),
        bodySmall: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.w400, color: Get.isDarkMode ?  AppColors.textColor : AppColors.textColor),

        /// Display Label Style
        labelLarge: TextStyle(
            fontSize: 14.sp, fontWeight: FontWeight.w400, color: Get.isDarkMode ?  AppColors.secondary : AppColors.secondary),
        labelMedium: TextStyle(
            fontSize: 12.sp, fontWeight: FontWeight.w500, color: Get.isDarkMode ?  AppColors.textColor : AppColors.textColor),
        labelSmall: TextStyle(
            fontSize: 10.sp, fontWeight: FontWeight.w400, color: Get.isDarkMode ?  AppColors.hintColor : AppColors.hintColor),
      ),

    /// Dialog Theme
    dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(10.sp))),
        elevation: 5.0.sp,
        backgroundColor: Get.isDarkMode ?  AppColors.secondary : AppColors.secondary),

    /// Card Theme
    cardTheme: CardTheme(
      color: Get.isDarkMode ? AppColors.bgTabBarColor : AppColors.bgTabBarColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius),
      ),
      elevation: AppDimensions.cardElevation,
    ),

    /// Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
        isDense: true, // Reduces the overall height of the TextFormField
        errorMaxLines: 1, // Limits the error message to one line
        contentPadding: EdgeInsets.symmetric( horizontal: 10.sp, vertical: 10.sp),
        border:  OutlineInputBorder(
          borderSide: BorderSide(color: Get.isDarkMode ? AppColors.borderColor : AppColors.borderColor),
        ),
        errorStyle: GoogleFonts.inter(
          textStyle: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: Get.isDarkMode ? AppColors.currency : AppColors.currency),
        ),
        disabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Get.isDarkMode ? AppColors.textColor : AppColors.textColor,
            )),
        enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Get.isDarkMode ? AppColors.borderColor : AppColors.borderColor,
            )),
        focusedBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color:  Get.isDarkMode ?  AppColors.appBarBottomContainer: AppColors.appBarBottomContainer,
            )),
        errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: Get.isDarkMode ? AppColors.currency : AppColors.currency,
            )),
        labelStyle: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Get.isDarkMode ? AppColors.textColor : AppColors.textColor,
          ),
        ),
        hintStyle: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: Get.isDarkMode ? AppColors.hintColor : AppColors.hintColor,
          ),
        ),
        iconColor: Get.isDarkMode ? AppColors.btnColor : AppColors.btnColor),

    /// Divider Theme
    dividerTheme: const DividerThemeData(
      color: Color(0xffEBECED),
      thickness: 1,
      space: 1,
    ),

    /// Card Theme
      cardColor:  Get.isDarkMode ? AppColors.secondary : AppColors.secondary,
    /// Elevated Button Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(
            AppDimensions.btnMinimumWidthSize, AppDimensions.btnMinimumHeightSize)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white54;
            } else if (states.contains(MaterialState.disabled)) {
              return Colors.white70;
            }
            return Colors.white70;
          },
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppDimensions.btnBorderRadius),
            //side: BorderSide(color: borderColor ?? Colors.transparent),
          ),
        ),
      ),
    ),

    /// Text Button Theme
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(
              Size(AppDimensions.textButtonWidth, AppDimensions.textButtonHeight)),
          foregroundColor: MaterialStateProperty.all<Color>(AppColors.primary),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppDimensions.btnBorderRadius),
              //side: BorderSide(color: borderColor ?? Colors.transparent),
            ),
          ),
        )),

    /// CheckBox Theme
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all<Color>( Get.isDarkMode ? AppColors.btnColor : AppColors.btnColor),
      fillColor: MaterialStateProperty.all<Color>(Get.isDarkMode ? AppColors.btnColor : AppColors.btnColor),
      //splashRadius: 10,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.btnBorderRadius)),
      visualDensity: VisualDensity.compact,
      side: BorderSide(
        color: Get.isDarkMode ? AppColors.btnColor : AppColors.btnColor,
        width: AppDimensions.borderWidth,
        style: BorderStyle.solid,
        //    strokeAlign: StrokeAlign.center)
      ),
    ),
    dropdownMenuTheme: const DropdownMenuThemeData(inputDecorationTheme:InputDecorationTheme())
  );

}

/// check is TabletDevice or Mobile
/// if Device is Tablet Resolution then this occur otherwise mobile Resolution occur
bool isTabletDevice(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double screenHeight = MediaQuery.of(context).size.height;

  /// Define a threshold size to consider as a tablet
  double tabletThreshold = 600.0;

  return screenWidth > tabletThreshold && screenHeight > tabletThreshold;
}