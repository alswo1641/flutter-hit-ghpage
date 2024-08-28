import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTextTheme {
  static const TextStyle headline = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle title1Bold = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle categoryTitleWhite = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle categoryTitleBlue = TextStyle(
    color: Color(0xff1B86DD),
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle AppBarTextBlue16m = TextStyle(
    color: Color(0xff1B86DD),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle categoryTitleBlue13b = TextStyle(
    color: Color(0xff1B86DD),
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle listItemTitleBold = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle dropdownItem = TextStyle(
    fontSize: 14,
    color: Color(0xffAAAAAA),
  );

  static const TextStyle listItemTextGrey = TextStyle(
    // color: Color(0xff313232),
    color: Color(0xff888888),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle listItemtextWhite = TextStyle(
    color: Color(0xffffffff),
    fontSize: 12,
  );

  static const TextStyle listItemtextWhiteBold = TextStyle(
    color: Color(0xffffffff),
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle listItemtextBlue = TextStyle(
    color: Color(0xff1B7ED6),
    fontSize: 10,
  );

  static const TextStyle textBlue = TextStyle(
    color: Color(0xff1B7ED6),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle boldtextBlue = TextStyle(
    color: Color(0xff1B7ED6),
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle bodyText = TextStyle(
    color: Color(0xff4C4C4C),
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const elevatedButton = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.35,
    color: Colors.white,
  );
  static const textButton = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.06,
    color: AppColor.textButtonColor,
  );

  // 앱바
  static const appBarTitle = TextStyle(
      fontSize: 15, fontWeight: FontWeight.w700, height: 1.3, letterSpacing: 0.3, color: AppColor.appBarTitleColor);

  // 앱바(로고)
  static const appBarLogoTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.3,
    letterSpacing: 0.36,
    color: AppColor.appColor,
  );
  static const app24b = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.4475,
    letterSpacing: 0.36,
    color: AppColor.appColor,
  );
  static const app18b = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.4475,
    letterSpacing: 0.36,
    color: AppColor.appColor,
  );

  static const app13b = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    height: 1.4475,
    letterSpacing: 0.36,
    color: AppColor.appColor,
  );

  static const whitegrey13b = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
  );

  static const whitegrey14b = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
  );

  static const whitegrey15b = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
  );

  static const whitegrey16b = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
  );

  static const whitegreyunder13b = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w700,
    height: 1.4475,
    color: Colors.white60,
    decoration: TextDecoration.underline,
    decorationThickness: 1.5,
  );

  static const whitegreyunder14b = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
    decoration: TextDecoration.underline,
    decorationThickness: 1.5,
  );
  static const whitegreyunder15b = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
    decoration: TextDecoration.underline,
    decorationThickness: 1.5,
  );
  static const whitegreyunder16b = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: Colors.white60,
    decoration: TextDecoration.underline,
    decorationThickness: 1.5,
  );

  // 메인 - 탭바에 사용
  static const tabBarText =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.4475, color: AppColor.tabBarColor);
  static const title = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -2.52,
    color: AppColor.titleColor,
  );
  static const body1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    height: 1.4475,
    color: AppColor.grey,
  );
  static const body2 = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.26,
    color: AppColor.boldGrey,
  );
  static const hintText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4475,
    letterSpacing: -0.21,
    color: AppColor.middleGrey,
  );
  static const textFieldHintText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.4475,
    letterSpacing: -0.21,
    color: AppColor.hintTextColor,
  );
  static const tableHeader = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    color: AppColor.black,
  );
  static const tableBody = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.49,
    color: Color(0xff3f3f3f),
  );

  static const userRoleText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.42,
    color: AppColor.userRoleColor,
  );
  static const userNameText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -1.08,
    color: AppColor.userNameColor,
  );
  static const header = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.4475,
    letterSpacing: -0.08,
    color: AppColor.boldBlack,
  );
  static const content = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4475,
    letterSpacing: -0.42,
    color: Color(0xff676767),
  );
  static const mediumContent = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.42,
    color: Color(0xff676767),
  );
  static const label = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.64,
    color: Color(0xff5c5c5c),
  );
  static const highlightContent = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.42,
    color: AppColor.appColor,
  );
  static const selectedChipText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.35,
    color: AppColor.selectedChipColor,
  );
  static const unselectedChipText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.35,
    color: AppColor.unselectedChipColor,
  );
  static const unselectedToggleButtonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.4475,
    letterSpacing: 0.35,
    color: AppColor.unselectedToggleColor,
  );
  static const greyElevatedButtonText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.35,
    color: Color(0xff818181),
  );
  static const attachedFileOutlinedButtonText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: -0.24,
    color: AppColor.tabBarColor,
  );
  static const basic12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.4475,
    letterSpacing: 0.06,
    color: AppColor.black,
  );
  static const basic14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.4475,
    letterSpacing: 0.06,
    color: AppColor.black,
  );
  static const basic20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.4475,
    letterSpacing: 0.06,
    color: AppColor.black,
  );
  static const userInfoTitle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColor.titleColor);
  static const userInfoBody = TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xff5C5C5C));
  static const userInfoDescribe = TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Color(0xff5C5C5C));
  static const manageRecipKinDescribe =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: Color(0xffD7A21E));
  static const consultationDescribe = TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Color(0xff222222));
  static const businessDiaryStepUnselected =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: 0.035, color: Color(0xff7C7C7C));
  static const businessDiaryStepSelected =
      TextStyle(fontSize: 10, fontWeight: FontWeight.w500, letterSpacing: 0.035, color: Color(0xff169B90));
  static const leftGrey14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.03,
    color: AppColor.leftGrey,
  );

  // Common Style
  // boldBlack
  static const boldBlack16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.boldBlack);
  static const boldBlack20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColor.boldBlack);

  // black
  static const black14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black11 = TextStyle(fontSize: 11, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black11m = TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black11b = TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black12l = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColor.black);
  static const black12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black18 = TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black18m = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black18b = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.black);
  static const black24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: AppColor.black);
  static const black24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColor.black);
  static const black24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColor.black);

  //semiRowGrey
  static const semiRowGrey12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.semiRowGrey);
  static const semiRowGrey12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.semiRowGrey);
  static const semiRowGrey12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.semiRowGrey);

  //deepGrey
  static const deepGrey14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.deepGrey);
  static const deepGrey14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.deepGrey);
  static const deepGrey14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.deepGrey);
  static const deepGrey16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.deepGrey);
  static const deepGrey16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.deepGrey);
  static const deepGrey16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.deepGrey);

  //middleGrey
  static const middleGrey8 = TextStyle(fontSize: 8, fontWeight: FontWeight.w400, color: AppColor.middleGrey);
  static const middleGrey8m = TextStyle(fontSize: 8, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const middleGrey8b = TextStyle(fontSize: 8, fontWeight: FontWeight.w700, color: AppColor.middleGrey);
  static const middleGrey10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.middleGrey);
  static const middleGrey10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const middleGrey10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.middleGrey);
  static const middleGrey12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.middleGrey);
  static const middleGrey12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const middleGrey12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.middleGrey);
  static const middleGrey16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.middleGrey);
  static const middleGrey16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const middleGrey16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.middleGrey);
  static const middleGrey24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColor.middleGrey);
  static const middleGrey24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const middleGrey24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColor.middleGrey);
  static const middleGrey14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.middleGrey);
  static const allBlack14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.allBlack);

  // white
  static const white10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: Colors.white);
  static const white10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white);
  static const white10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Colors.white);
  static const white12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white);
  static const white12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white);
  static const white12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white);
  static const white13 = TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white);
  static const white13m = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white);
  static const white13b = TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white);
  static const white14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white);
  static const white14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white);
  static const white14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white);
  static const white15 = TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white);
  static const white15m = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white);
  static const white15b = TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white);

  static const white16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white);
  static const white16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);
  static const white16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white);
  static const white17b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white);
  static const white18 = TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white);
  static const white18m = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white);
  static const white18b = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white);
  static const white20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white);
  static const white20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white);
  static const white20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white);
  static const white24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: Colors.white);
  static const white24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white);
  static const white24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white);

  // grey
  static const grey10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.darkGrey);
  static const grey10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.darkGrey);
  static const grey12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.darkGrey);
  static const grey12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.darkGrey);
  static const grey13m = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey13b = TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: AppColor.darkGrey);
  static const grey14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.darkGrey);
  static const grey14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.darkGrey);
  static const grey15 = TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: AppColor.darkGrey);
  static const grey15m = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey15b = TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColor.darkGrey);
  static const grey18b = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColor.darkGrey);
  static const grey20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: AppColor.darkGrey);
  static const grey20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.darkGrey);
  static const grey20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.darkGrey);

  // semiGrey
  static const semiGrey12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.semiGrey);
  static const semiGrey12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.semiGrey);
  static const semiGrey12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.semiGrey);
  static const semiGrey13 = TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: AppColor.semiGrey);
  static const semiGrey13m = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColor.semiGrey);
  static const semiGrey13b = TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColor.semiGrey);
  static const semiGrey14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.semiGrey);
  static const semiGrey14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.semiGrey);
  static const semiGrey14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.semiGrey);
  // greyBlack
  static const greyBlack14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.greyBlack);
  static const greyBlack14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.greyBlack);
  static const greyBlack14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.greyBlack);

  //deepGrey
  static const deepGrey12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.deepGrey);
  static const deepGrey12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.deepGrey);
  static const deepGrey12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.semiGrey);
  static const deepGrey20 =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400, letterSpacing: 0.035, color: AppColor.deepGrey);

  //leftLowGrey
  static const leftLowGrey16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.035, color: AppColor.leftLowGrey);

  // orange
  static const orange12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.orange);
  static const orange14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.orange);

  // lightBlue
  static const lightBlue14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.lightBlue);
  static const lightBlue14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColor.lightBlue);

  // semiBlue
  static const semiBlue10l = TextStyle(
      fontSize: 10, decoration: TextDecoration.underline, fontWeight: FontWeight.w300, color: AppColor.semiBlue);
  static const semiBlue12l = TextStyle(
      fontSize: 12, decoration: TextDecoration.underline, fontWeight: FontWeight.w300, color: AppColor.semiBlue);

  // purple

  static const purple12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColor.purple);
  static const purple12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.purple);
  static const purple12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.purple);

  // blue
  static const blue10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue13 = TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue13m = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue13b = TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue18 = TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue18m = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue18b = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blue36 = TextStyle(fontSize: 36, fontWeight: FontWeight.w300, color: AppColor.appColor);
  static const blue36m = TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.appColor);
  static const blue36b = TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColor.appColor);
  static const blueBlack12l =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w300, letterSpacing: 0.035, color: AppColor.blueGrey);
  static const blueBlack12m =
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.035, color: AppColor.blueGrey);
  static const boldBlack26 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w400, letterSpacing: 0.035, color: AppColor.boldBlack);

  // skyBlue
  static const skyBlue10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue13 = TextStyle(fontSize: 13, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue13m = TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue13b = TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue15 = TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue15m = TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue15b = TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue18 = TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue18m = TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue18b = TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColor.skyBlue);
  static const skyBlue36 = TextStyle(fontSize: 36, fontWeight: FontWeight.w300, color: AppColor.skyBlue);
  static const skyBlue36m = TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: AppColor.skyBlue);
  static const skyBlue36b = TextStyle(fontSize: 36, fontWeight: FontWeight.w700, color: AppColor.skyBlue);

  // deepPrimary
  static const deepPrimary12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.deepPrimary);

  // yellow
  static const yellow20 = TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: AppColor.yellow);
  static const yellow20m = TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: AppColor.yellow);
  static const yellow20b = TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: AppColor.yellow);
  static const yellow24 = TextStyle(fontSize: 24, fontWeight: FontWeight.w300, color: AppColor.yellow);
  static const yellow24m = TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: AppColor.yellow);
  static const yellow24b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: AppColor.yellow);

  // #888888
  static const color88888824b = TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(0xff888888));

  static const color88888810b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: Color(0xff888888));

  // home active font
  static const homeActive10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.appColor);

  // #BBBBBB
  static const colorBBBBBB12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffBBBBBB));

  // #BBBBBB
  static const colorDDDDDD12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffDDDDDD));

  static const red10 = TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: AppColor.red);
  static const red10m = TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: AppColor.red);
  static const red10b = TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: AppColor.red);
  static const red12 = TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColor.red);
  static const red12m = TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColor.red);
  static const red12b = TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: AppColor.red);
  static const red14 = TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: AppColor.red);
  static const red14m = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.red);
  static const red14b = TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.red);
  static const red16 = TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: AppColor.red);
  static const red16m = TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColor.red);
  static const red16b = TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColor.red);

  // 내 계약
  static const TextStyle completed = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xff1D9947));
  static const TextStyle incompleted = TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: AppColor.red);
}
