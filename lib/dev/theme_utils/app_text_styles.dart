import 'package:flutter/cupertino.dart';

import 'app_colors.dart';
import 'dimensions.dart';


class AppTextStyles {
  static TextStyle appBarLabelTextStyle = TextStyle(
      color: AppColors.white,
      fontSize: AppDimensions.appBarLabelTextSize,
      fontWeight: FontWeight.bold);

  static TextStyle headingTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: AppDimensions.headingTextSize,
  );

  static TextStyle normalWhiteTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: AppDimensions.normalTextSize,
  );
  static TextStyle smallWhiteTextStyle = TextStyle(
    color: AppColors.white,
    fontSize: AppDimensions.smallTextSize,
  );

  // static TextStyle normalYellowTextStyle = TextStyle(
  //   color: AppColors.yellow,
  //   fontSize: AppDimensions.normalTextSize,
  // );
  // static TextStyle normalBlackTextStyle = TextStyle(
  //   color: AppColors.blackColor,
  //   fontSize: AppDimensions.normalTextSize,
  // );
  static TextStyle smallBlackTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: AppDimensions.smallTextSize,
  );

  static TextStyle hintSmallTextStyle = TextStyle(
    color: AppColors.labelColor,
    fontSize: AppDimensions.smallTextSize,
  );

  static TextStyle errorTextStyle = TextStyle(
      height: 0.5,
      color: AppColors.tfErrorBorderColor,
      fontSize: AppDimensions.smallTextSize);

  static TextStyle dropDownTextStyle = TextStyle(
    color: AppColors.labelColor,
    fontSize: AppDimensions.normalTextSize,
  );
}
