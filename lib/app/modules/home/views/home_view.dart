// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

import '../controllers/home_controller.dart';
import './../../views_constrain.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            userNotif(),
            Expanded(
              child: Obx(
                () => SingleChildScrollView(
                  controller: controller.scrollView,
                  child: pages[controller.pageSelect.value],
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Obx(
                    () => Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        menuIcon(
                          title: "home",
                          icon: controller.pageSelect.value == 0
                              ? Icons.home
                              : Icons.home_outlined,
                          initial: 0,
                        ),
                        menuIcon(
                          title: "video",
                          icon: controller.pageSelect.value == 1
                              ? Icons.video_camera_front
                              : Icons.video_camera_front_outlined,
                          initial: 1,
                        ),
                        menuIcon(
                          title: "chat",
                          icon: controller.pageSelect.value == 2
                              ? Icons.chat_bubble
                              : Icons.chat_bubble_outline,
                          initial: 2,
                        ),
                        menuIcon(
                          title: "user",
                          icon: controller.pageSelect.value == 3
                              ? Icons.supervised_user_circle
                              : Icons.supervised_user_circle_outlined,
                          initial: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: -3,
                  child: Container(
                    height: 12,
                    width: Get.width,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        dotMenu(
                          title: "home",
                          initial: 0,
                        ),
                        dotMenu(
                          title: "video",
                          initial: 1,
                        ),
                        dotMenu(
                          title: "chat",
                          initial: 2,
                        ),
                        dotMenu(
                          title: "user",
                          initial: 3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class dotMenu extends StatelessWidget {
  const dotMenu({
    Key? key,
    required this.title,
    required this.initial,
  }) : super(key: key);
  final String title;
  final int initial;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Container(
      width: 28,
      child: Center(
        child: Obx(
          () => Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: initial == controller.pageSelect.value
                  ? Color(0xffFE8235)
                  : Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class menuIcon extends StatelessWidget {
  const menuIcon({
    Key? key,
    required this.title,
    required this.icon,
    required this.initial,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final int initial;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return InkWell(
      onTap: () {
        controller.pageSelect.value = initial;
      },
      child: Obx(
        () => Container(
          width: 28,
          child: Center(
            child: Icon(
              icon,
              color: controller.pageSelect.value == initial
                  ? Color(0xffFE8235)
                  : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class userNotif extends StatelessWidget {
  userNotif({
    super.key,
  });
  final contoller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: contoller.scroling.value ? Colors.white : Colors.transparent,
        padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 35,
              height: 35,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffF09E54).withOpacity(0.4),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/c57adabed33deffd9e936c9b285f611e.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 2),
                  child: SvgPicture.asset("assets/svgs/Group.svg"),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    width: 21,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffFE8235),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: GoogleFonts.epilogue(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
