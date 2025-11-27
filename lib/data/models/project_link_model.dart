class ProjectLinks {
  String? android;
  String? ios;

  ProjectLinks({this.android, this.ios});

  factory ProjectLinks.fromJson(Map<String, dynamic> json) {
    return ProjectLinks(android: json["android"], ios: json["ios"]);
  }

  Map<String, dynamic> toJson() {
    return {"android": android, "ios": ios};
  }
}
