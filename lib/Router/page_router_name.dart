class PageRouterName {
  final String name;
  final String path;
  const PageRouterName({required this.name, required this.path});
}

class Routes {
  static const PageRouterName splashScreen = PageRouterName(
    name: "splash_screen",
    path: "/splash_screen",
  );

  static const PageRouterName homeScreen = PageRouterName(
    name: "home_screen",
    path: "/",
  );
}
