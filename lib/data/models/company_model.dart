import 'package:flutter_web_portfolio/data/models/project_model.dart';

class CompanyModel {
  String? company;
  List<ProjectModel>? projects;

  CompanyModel({this.company, this.projects});

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      company: json["company"],
      projects: (json["projects"] as List?)
          ?.map((p) => ProjectModel.fromJson(p))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "company": company,
      "projects": projects?.map((p) => p.toJson()).toList(),
    };
  }
}
