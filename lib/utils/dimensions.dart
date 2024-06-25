import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWeight = Get.context!.width;

  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;

  // dinamic height =>  padding and margn
  static double height10 = screenHeight / 84.4; // => 10
  static double height20 = screenHeight / 42.2; // = 20
  static double height25 = screenHeight / 33.16; // => 25
  static double height30 = screenHeight / 28.13; // => 30
  static double height40 = screenHeight / 21.1; // => 40
  static double height45 = screenHeight / 18.75; // => 45
  static double height50 = screenHeight / 15.36; // => 50
  static double height150 = screenHeight / 4.5; // => 150
  static double height260 = screenHeight / 2.64; // => 260
  static double height550 = screenHeight / 1.8; // => 550
  static double height600 = screenHeight / 1.6; // => 600

  //dinamic weight => padding and margn
  static double width10 = screenHeight / 84.4; // => 10
  static double width15 = screenHeight / 56.27; // => 15
  static double width20 = screenHeight / 42.2; // => 20
  static double width25 = screenHeight / 33.16; // => 25
  static double width40 = screenHeight / 21.1; // => 40
  static double width45 = screenHeight / 18.75; // => 45
  static double width50 = screenHeight / 15.36; // => 50
  static double width60 = screenHeight / 12.7; // => 60
  static double width300 = screenHeight / 2.64; // => 300

  // fonts
  static double font16 = screenHeight / 53.75; // => 20
  static double font20 = screenHeight / 42.2; // => 20
  static double font26 = screenHeight / 32.4; // => 26

  //radius
  static double radius15 = screenHeight / 56.27; // => 20
  static double radius20 = screenHeight / 42.2; // => 20
  static double radiu30 = screenHeight / 28.13; // => 30

  // icons size
  static double iconSize30 = screenHeight / 28.13;
  static double iconSize25 = screenHeight / 33.16;
}
