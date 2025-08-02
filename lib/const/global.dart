import 'package:flutter_web_portfolio/data/models/blog_post.dart';

List service = [
  "assets/services/Mobile App Development.png",
  "assets/services/Architecture setup.png",
  "assets/services/State Management.png",
  "assets/services/Backend Integration.png",
  "assets/services/Push Notifications.png",
  "assets/services/Publiced.png",
];
List<BlogPost> getBlog = [
  BlogPost(
    id: 'flutter-animations',
    title: 'Creating Smooth Animations in Flutter',
    description:
        'Learn how to build smooth UI animations using Flutter’s built-in tools.',
    content:
        '🎯 In this post, we’ll cover AnimatedContainer, TweenAnimationBuilder, and more...',
    author: 'IndianCoder Dev',
    date: DateTime(2025, 8, 2),
  ),
  BlogPost(
    id: 'flutter-state-management',
    title: 'Best State Management in 2025',
    description: 'Bloc vs Riverpod vs Provider – What’s best in 2025?',
    content: '🔥 Let’s dive into comparisons with real-world examples...',
    author: 'IndianCoder Dev',
    date: DateTime(2025, 7, 20),
  ),
  BlogPost(
    id: 'flutter-performance',
    title: 'Flutter Web Performance Optimization',
    description: 'Tips to make your Flutter web apps blazing fast.',
    content:
        '⚡ From lazy loading to image compression, discover how to optimize performance...',
    author: 'IndianCoder Dev',
    date: DateTime(2025, 7, 10),
  ),
  BlogPost(
    id: 'flutter-navigation',
    title: 'Mastering Navigation in Flutter',
    description: 'A complete guide to Navigator 2.0 and go_router.',
    content:
        '🧭 Understand declarative navigation, deep linking, and route guards...',
    author: 'IndianCoder Dev',
    date: DateTime(2025, 6, 28),
  ),
  BlogPost(
    id: 'flutter-ui-design',
    title: 'Building Clean UI with Flutter',
    description: 'How to create beautiful and maintainable UIs.',
    content:
        '🎨 Use design patterns, theme management, and custom widgets to scale UI design...',
    author: 'IndianCoder Dev',
    date: DateTime(2025, 6, 15),
  ),
];

