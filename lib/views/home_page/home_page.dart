import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/home_page/desktop/home_desktop.dart';
import 'package:flutter_web_portfolio/views/home_page/mobile/big%20mobile/big_mobile.dart';
import 'package:flutter_web_portfolio/views/home_page/mobile/small%20mobile/small_mobile.dart';
import 'package:flutter_web_portfolio/views/home_page/tablet/home_tablet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1200) {
            return HomeDesktop();
          } else if (constraints.maxWidth > 800) {
            return HomeTablet();
          } else if (constraints.maxWidth > 600) {
            return BigMobile();
          } else {
            return SmallMobile();
          }
        },
      ),
    );
  }
}
