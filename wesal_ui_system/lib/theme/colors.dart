import 'dart:ui';

class AppColors {
  // Primary Colors
  final Color appPrimaryColor; // #17AAB1
  final Color friendsModePrimary; // #FEC018
  final Color datingModePrimary; // #ED4F51
  final Color eventsModePrimary; // #5D277E
  final Color culturalModePrimary; // #2566EF
  final Color redColor; // #FF0000

  // Secondary Colors
  final Color appSecondaryColor; // #BDD8DA
  final Color friendsModeSecondary; // #F0F0C0
  final Color datingModeSecondary; // #EBC4C7
  final Color eventsModeSecondary; // #E5D7F6
  final Color culturalModeSecondary; // #C3D8FF

  // Third color (Containers)
  final Color friendsModeThirdColor; // #FFF6E2
  final Color datingModeThirdColor; // #FEF2F2
  final Color culturalModeThirdColor; // #EBF2FF

  // Other
  final Color whiteColor; // #FEFEFE
  final Color blackColor; // #333333
  final Color onlineGreen; // #27AE60
  final Color blueColor; // #4267B2

  // Gray
  final Color gray6; // #F2F2F2
  final Color gray5; // #E0E0E0
  final Color gray3; // #B2B2B2
  final Color gray2; // #616161
  final Color gray1; // #333333

  //Red
  final Color red3; // #FFF0FB
  final Color styleRed; // #F8CCED

  const AppColors({
    this.styleRed = const Color(0xFFF8CCED),
    this.red3 = const Color(0xFFFFF0FB),
    this.appPrimaryColor = const Color(0xFF00A6B2),
    this.friendsModePrimary = const Color(0xFFFEC018),
    this.datingModePrimary = const Color(0xFFD500AA),
    this.eventsModePrimary = const Color(0xFF5D277E),
    this.culturalModePrimary = const Color(0xFF2566EF),

    this.appSecondaryColor = const Color(0xFFBBDBDE),
    this.friendsModeSecondary = const Color(0xFFF0F0C0),
    this.datingModeSecondary = const Color(0xFFEBC4C7),
    this.eventsModeSecondary = const Color(0xFFE5D7F6),
    this.culturalModeSecondary = const Color(0xFFC3D8FF),

    this.friendsModeThirdColor = const Color(0xFFFFF6E2),
    this.datingModeThirdColor = const Color(0xFFFEF2F2),
    this.culturalModeThirdColor = const Color(0xFFEBF2FF),

    this.whiteColor = const Color(0xFFFEFEFE),
    this.blackColor = const Color(0xFF333333),
    this.onlineGreen = const Color(0xFF27AE60),

    this.gray6 = const Color(0xFFF2F2F2),
    this.gray5 = const Color(0xFFE0E0E0),
    this.gray3 = const Color(0xFFB2B2B2),
    this.gray2 = const Color(0xFF616161),
    this.blueColor = const Color(0xFF4267B2),
    this.gray1 = const Color(0xFF333333),
    this.redColor = const Color(0xFFFF0000),
  });
}
