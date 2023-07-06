// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:efiwe_app/src/app/authentication/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/custonwidget.dart';
import 'localwidgets/onboardingController.dart';
import '../widgets/svgimage.dart';

class Onboarding extends GetView<OnboardingController> {
  Onboarding({Key? key}) : super(key: key);
  PageController pageController = PageController();
  OnboardingController onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: PageView.builder(
          controller: onboardingController.pageController,
          onPageChanged: onboardingController.currentIntegerIndex,
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) => Stack(children: [
                Positioned(
                  top: 100,
                  left: 100,
                  right: 100,
                  child: Obx(
                    () => AnimatedSmoothIndicator(
                      activeIndex:
                          onboardingController.currentIntegerIndex.value,
                      count: 6,
                      effect: const ExpandingDotsEffect(
                        dotColor: Colors.white,
                        activeDotColor: Color(0xFF112D8E),
                        expansionFactor: 2,
                        radius: 5,
                        dotWidth: 8,
                        dotHeight: 4,
                      ),
                    ),
                  ),
                ),
                Center(child: _buildCarousel()),
                Positioned(
                  top: 705,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const CustomText(
                      text: "skip",
                      colour: Colors.blue,
                      weight: FontWeight.w600,
                      size: 14,
                      style: FontStyle.italic,
                    ),
                  ),
                ),
                Positioned(
                  top: 705,
                  left: 131,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        shadowColor: Colors.lightBlue,
                      ),
                      onPressed: onboardingController.forwardAction,
                      child: const Text('Next')),
                )
              ])),
    ));
  }

  Widget _buildCarousel() {
    return CarouselSlider(
      items: const [
        Stack(
          children: [
            Center(child: SvgImage(imageLocation: "assets/pana.svg")),
            Positioned(
              top: 550,
              right: 30,
              left: 30,
              child: CustomText(
                text: "AI powered learning for effective understanding",
                colour: Colors.white,
                weight: FontWeight.w700,
                size: 16,
              ),
            ),
          ],
        ),
        Center(
          child: Stack(
            children: [
              SvgImage(
                imageLocation: "assets/rafiki.svg",
              ),
              Positioned(
                top: 559.9,
                right: 30,
                left: 30,
                child: CustomText(
                  text: "Learn and climb the academic ladder with Efiwe!",
                  colour: Colors.white,
                  weight: FontWeight.w700,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            SvgImage(
              imageLocation: "assets/sit.svg",
            ),
            Positioned(
              top: 559.9,
              right: 30,
              left: 30,
              child: CustomText(
                text:
                    "Download and have access to all resources when you are offline.",
                colour: Colors.white,
                weight: FontWeight.w700,
                size: 16,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SvgImage(
              imageLocation: "assets/milestone.svg",
            ),
            Positioned(
              top: 559.9,
              right: 30,
              left: 30,
              child: CustomText(
                text:
                    "Climb the rankings on the leaderboard and earn rewards as you learn!",
                colour: Colors.white,
                weight: FontWeight.w700,
                size: 16,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SvgImage(
              imageLocation: "assets/amico.svg",
            ),
            Positioned(
              top: 559.9,
              right: 30,
              left: 30,
              child: CustomText(
                text: "Have fun as you learn on Efiwe Mobile App",
                colour: Colors.white,
                weight: FontWeight.w700,
                size: 16,
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SvgImage(
              imageLocation: "assets/yay.svg",
            ),
            Positioned(
              top: 559.9,
              right: 30,
              left: 30,
              child: CustomText(
                text: "Achieve success in your exams",
                colour: Colors.white,
                weight: FontWeight.w700,
                size: 16,
              ),
            ),
          ],
        ),
      ],
      options: CarouselOptions(
        // height: 667.h,
        aspectRatio: 375 / 667,
        enableInfiniteScroll: false,
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          onboardingController.swipePage(index, reason);
        },
      ),
    );
  }
}
