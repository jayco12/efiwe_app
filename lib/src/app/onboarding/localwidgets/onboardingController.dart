import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController extends GetxController {
  RxInt currentIntegerIndex = 0.obs;
  var pageController = PageController();

  void swipePage(int index, CarouselPageChangedReason reason) {
    currentIntegerIndex.value = index;
    update();
  }

  forwardAction() {
    pageController.nextPage(duration: 500.milliseconds, curve: Curves.easeOut);
  }
}
