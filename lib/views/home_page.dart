import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/const/colors.dart';
import 'package:flutter_web_portfolio/views/home_header.dart';
import 'package:flutter_web_portfolio/views/home/skill/skills.dart';
import 'package:flutter_web_portfolio/views/home/project/project.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard.dart';
import 'package:flutter_web_portfolio/views/home/dashboard/dashboard_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _skillsKey = GlobalKey();
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _projectKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Column(
            children: [
              HomeHeader(homeKey: _homeKey, projectKey: _projectKey, skillKey: _skillsKey,),
              Expanded(
                child: ListView(
                  children: [
                    Dashboard(homeKey: _homeKey),
                    Gap(10),
                    Project(projectKey: _projectKey),
                    Gap(10),
                    Skills(skillsKey: _skillsKey),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
