import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard_tablet.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard_desktop.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard_big_mobile.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard_small_mobile.dart';

class Dashboard extends StatefulWidget {
  final GlobalKey homeKey;
  const Dashboard({super.key, required this.homeKey});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return HomeDesktop(homeKey: widget.homeKey);
        } else if (constraints.maxWidth > 800) {
          return HomeTablet(homeKey: widget.homeKey);
        } else if (constraints.maxWidth > 600) {
          return DashboardBigMobile(homeKey: widget.homeKey);
        } else {
          return DashboardSmallMobile(homeKey: widget.homeKey);
        }
      },
    );
  }
}
