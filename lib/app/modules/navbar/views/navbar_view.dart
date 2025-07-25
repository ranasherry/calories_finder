import 'package:calories_detector/app/data/Data_Base.dart';
import 'package:calories_detector/app/modules/utills/app_ads.dart';
import 'package:calories_detector/app/modules/utills/app_images.dart';
import 'package:calories_detector/app/premium/premium.dart';
import 'package:calories_detector/app/premium/trailbase.dart';
import 'package:calories_detector/app/providers/applovin_ads_provider.dart';
import 'package:calories_detector/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Obx(() => controller.appBarList[controller.index.value])),
      // backgroundColor: Colors.white,
      // backgroundColor: Colors.black12,
      // backgroundColor: Colors.white.withOpacity(0.9),

      body: Obx(() {
        return Stack(
          children: [
            controller.bodyList[controller.index.value],
            GestureDetector(
              onTap: () {
                // showButtons = false.obs;
                if (controller.showButtons.value == true) {
                  controller.showButtons.toggle();
                  print('buttonfalse');
                }
              },
              child: Container(
                height: controller.showButtons.value ? double.infinity : 0,
                width: controller.showButtons.value ? double.infinity : 0,
                color: controller.showButtons.value
                    ? Colors.white.withOpacity(0.9)
                    : Colors.transparent,
              ),
            ),
            // Expanded(child: SingleChildScrollView(child: Text('$tempprompt'))),
          ],
        );
      }),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    AdsHandler().pageShufflead();
                    print('index=0');
                    controller.index.value = 0;
                    controller.resetFunction();
                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.show_chart,
                            size: controller.index.value == 0 ? 30 : 25,
                            color: controller.index.value == 0
                                ? Colors.green
                                : Colors.grey),
                        Text('Progress',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: controller.index.value == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: controller.index.value == 0
                                    ? Colors.green
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    AdsHandler().pageShufflead();
                    print('index=1');
                    controller.index.value = 1;
                    controller.resetFunction();
                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.history,
                            size: controller.index.value == 1 ? 30 : 25,
                            color: controller.index.value == 1
                                ? Colors.green
                                : Colors.grey),
                        Text('History',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: controller.index.value == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: controller.index.value == 1
                                    ? Colors.green
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 60), // Space for center button
                InkWell(
                  onTap: () async {
                    // HomeController().updatehomedata();
                    // test!.value++;
                    AdsHandler().pageShufflead();
                    // controller.index.value = 2;
                    // controller.resetFunction();
                    print('index=2');
                    Get.toNamed(Routes.AICHAT);

                    // await DatabaseHelper().deleteDatabaseFile();
                    // await DatabaseHelper2().deleteDatabaseFile();
                    // print('${test}');
                    // print('$tempprompt');
                    // HomeController().updateInitial();
                    // Get.dialog(
                    //   Container(
                    //     color: AppThemeColors.secondery1.withOpacity(0.6),
                    //     child: Center(
                    //       child: Container(
                    //         clipBehavior: Clip.hardEdge,
                    //         height: SizeConfig.screenHeight * 0.2,
                    //         width: SizeConfig.screenWidth * 0.9,
                    //         // padding: EdgeInsets.all(20),
                    //         decoration: BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(20),
                    //           boxShadow: [
                    //             BoxShadow(
                    //               color: Colors.black.withOpacity(0.2),
                    //               blurRadius: 10,
                    //               offset: Offset(0, 4),
                    //             ),
                    //           ],
                    //         ),
                    //         child: LiquidloadingView(),
                    //       ),
                    //     ),
                    //   ),
                    //   barrierDismissible:
                    //       false, // Prevent dismissing by tapping outside
                    // );
                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                            // Icons.grading_sharp,
                            Icons.chat,
                            size: controller.index.value == 2 ? 30 : 25,
                            color: controller.index.value == 2
                                ? Colors.green
                                : Colors.grey),
                        Text('Ai Chat',
                            style: TextStyle(
                                fontSize: 9,
                                fontWeight: controller.index.value == 2
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: controller.index.value == 2
                                    ? Colors.green
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  // onTap: () async {
                  //   TempDataAddinDataBase();
                  //   // Deletedatabases();
                  //   print('index=3');
                  // },
                  onTap: () {
                    AdsHandler().pageShufflead();
                    print('index=3');
                    controller.index.value = 3;
                    controller.resetFunction();
                    // Deletedatabases();
                    // TrailbaseHelper.instance.deleteDatabaseFile();
                    // Get.toNamed(Routes.PAYWALL);
                  },
                  child: SizedBox(
                    width: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.settings,
                            size: controller.index.value == 3 ? 30 : 25,
                            color: controller.index.value == 3
                                ? Colors.green
                                : Colors.grey),
                        Text('Setting',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: controller.index.value == 3
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: controller.index.value == 3
                                    ? Colors.green
                                    : Colors.grey)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Obx(
        () => SizedBox(
          height: 175,
          width: 160,
          child: Stack(
            clipBehavior: Clip.none,
            // alignment: Alignment.center,
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: controller.showButtons.value ? 0 : 75,
                right: controller.showButtons.value ? 0 : 55,
                child: FloatingActionButton(
                  heroTag: 'tag2',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  onPressed: () {
                    if (controller.showButtons.value == true) {
                      controller.showButtons.toggle();
                      print('buttonfalse');
                    }
                    print('camera press');
                    // Handle button 2 press
                    Get.toNamed(Routes.CAMERA_SCREEN);
                  },
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                top: controller.showButtons.value ? 0 : 75,
                left: controller.showButtons.value ? 0 : 55,
                child: FloatingActionButton(
                  heroTag: 'tag1',
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  onPressed: () {
                    if (controller.showButtons.value == true) {
                      controller.showButtons.toggle();
                      print('buttonfalse');
                    }
                    print('BUTTON1');
                    controller.pickImageFromGallery();
                  },
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.image,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 35),
                      child: SizedBox(
                        height: 70,
                        width: 100,
                        child: Center(
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: FloatingActionButton(
                                heroTag: 'tag3',
                                onPressed: () {
                                  if (Premium.instance.apple!.value >=
                                      PremiumTheme.scanPrice) {
                                    controller.showButtons.toggle();
                                  } else {
                                    Get.toNamed(Routes.STREAK);
                                  }
                                },
                                backgroundColor: Colors.green,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35),
                                ),
                                child: SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: Image.asset(AppImages.iconscan),
                                )),
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 0,
                    //   right: 0,
                    // child: SizedBox(
                    //   width: 45,
                    //   child: Center(
                    //     child: Container(
                    //       // height: 20,
                    //       // width: 50,
                    //       decoration: BoxDecoration(
                    //           color: Colors.red,
                    //           borderRadius: BorderRadius.circular(100)
                    //           // shape: BoxShape.circle
                    //           ),
                    //       child: Padding(
                    //         padding: const EdgeInsets.all(3.0),
                    //         child: Text(
                    //             // '1000',
                    //             '${Premium.instance.trail}',
                    //             style: TextStyle(
                    //                 color: Colors.white, height: 1)),
                    //       ),
                    //     ),
                    //   ),
                    // ))
                  ],
                ),
              ),
              Positioned(
                top: 60,
                right: 30,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppImages.apple2,
                      height: 40,
                      color: PremiumTheme.appleColor,
                    ),
                    Text(
                      '${PremiumTheme.scanPrice}',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
