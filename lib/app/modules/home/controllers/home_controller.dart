import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  ScrollController scrollView = ScrollController();
  final scroling = false.obs;
  final pageSelect = 0.obs;

  @override
  void onInit() {
    super.onInit();
    scrollView.addListener(() {
      if (scrollView.offset > 24) {
        scroling.value = true;
      } else {
        scroling.value = false;
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
