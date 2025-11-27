import 'package:flutter_web_portfolio/data/models/project_link_model.dart';

class ProjectModel {
  String? title;
  String? image;
  List<String>? details;
  ProjectLinks? links;

  ProjectModel({this.title, this.image, this.details, this.links});

  factory ProjectModel.fromJson(Map<String, dynamic> json) {
    return ProjectModel(
      title: json["title"],
      image: json["image"],
      details: (json["details"] as List?)?.map((d) => d.toString()).toList(),
      links: json["links"] != null
          ? ProjectLinks.fromJson(json["links"])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "image": image,
      "details": details,
      "links": links?.toJson(),
    };
  }
}
