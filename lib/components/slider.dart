// ignore_for_file:avoid_dynamic_calls


import "package:carousel_slider/carousel_slider.dart";
import "package:flutter/material.dart";
import "package:flutter_web_portfolio/const/colors.dart";
import "package:flutter_web_portfolio/const/global.dart";
import "package:flutter_web_portfolio/utils/screen_utils.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class Sliders extends StatefulWidget {
  const Sliders({super.key});
  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) => Stack(
    alignment: Alignment.bottomCenter,
    children: [
      SizedBox(
        height: fullHeight(context),
        width: fullWidth(context),
        child: CarouselSlider.builder(
          carouselController: _controller,
          itemCount: service.length,
          itemBuilder:
              (context, index, realIndex) =>
                  Image.asset(service[index], fit: BoxFit.contain),
          options: CarouselOptions(
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            autoPlay: true,
            height: 180,
            disableCenter: true,
            autoPlayCurve: Curves.fastLinearToSlowEaseIn,
            scrollPhysics: const BouncingScrollPhysics(),
            viewportFraction: 1,
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          child: AnimatedSmoothIndicator(
            onDotClicked: (index) {
              _controller.jumpToPage(index);
            },
            activeIndex: _currentIndex,
            count: service.length,
            effect: WormEffect(
              spacing: 5,
              dotHeight: 8,
              dotWidth: 8,
              radius: 5,
              dotColor: white.withOpacity(0.5),
              activeDotColor: blue.withOpacity(0.8),
            ),
          ),
        ),
      ),
    ],
  );
}
