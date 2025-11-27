import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/views/home/project/project_tablet.dart';
import 'package:flutter_web_portfolio/views/home/project/project_desktop.dart';
import 'package:flutter_web_portfolio/views/home/project/project_big_mobile.dart';
import 'package:flutter_web_portfolio/views/home/project/project_small_mobile.dart';

class Project extends StatefulWidget {
  final GlobalKey projectKey;
  const Project({super.key, required this.projectKey});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return ProjectDesktop(projectKey: widget.projectKey);
        } else if (constraints.maxWidth > 800) {
          return ProjectTablet(projectKey: widget.projectKey);
        } else if (constraints.maxWidth > 600) {
          return ProjectBigMobile(projectKey: widget.projectKey);
        } else {
          return ProjectSmallMobile(projectKey: widget.projectKey);
        }
      },
    );
  }
}
