import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/data/models/blog_post.dart';
import 'package:flutter_web_portfolio/data/models/company_model.dart';
import 'package:flutter_web_portfolio/data/models/project_model.dart';
import 'package:flutter_web_portfolio/data/models/skill_category_model.dart';

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

List<ProjectModel> project = [
  ProjectModel.fromJson({
    "title": "Node API",
    "image": "https://images.unsplash.com/photo-1518770660439-4636190af475",
    "details": [
      "Developed backend APIs to capture salesman activities including daily follow-up, recall, and work updates.",
      "Implemented secure authentication, role-based access, and fast data processing for real-time activity reporting.",
    ],
  }),
  ProjectModel.fromJson({
    "title": "KrishiVikas",
    "image": "https://images.unsplash.com/photo-1500937386664-56d1dfef3854",
    "details": [
      "Built a buyer–seller agriculture marketplace with 8 major categories, including Rent, Used, and New product listings.",
      "Added chat, cart, wishlist, and order features, integrating secure backend APIs using Provider with optimized UI/UX.",
    ],
    "links": {
      "android":
          "https://play.google.com/store/apps/details?id=com.krishivikas.android&pcampaignid=web_share",
      "ios":
          "https://apps.apple.com/in/app/krishi-vikas-udyog-kisan-app/id6449253442",
    },
  }),
  ProjectModel.fromJson({
    "title": "Abybaby Attendance Management System",
    "image": "https://images.unsplash.com/photo-1521791055366-0d553872125f",
    "details": [
      "Developed a complete employee attendance app with check-in/out, GPS tracking, leave requests, and work logs.",
      "Implemented real-time location validation, secure API integration, and a responsive UI using GetX.",
    ],
    "links": {
      "android":
          "https://play.google.com/store/apps/details?id=com.abybaby.attendance_hrms&pcampaignid=web_share",
      "ios": "#",
    },
  }),
  ProjectModel.fromJson({
    "title": "Abybaby Project Management System",
    "image": "https://images.unsplash.com/photo-1557426272-fc759fdf7a8d",
    "details": [
      "Built a project and task management system with team assignment, progress tracking, and status monitoring.",
      "Integrated secure backend APIs, optimized workflows, and designed a clean, efficient UI with GetX.",
    ],
    "links": {
      "android":
          "https://play.google.com/store/apps/details?id=com.abybaby.pms&pcampaignid=web_share",
      "ios": "#",
    },
  }),
  ProjectModel.fromJson({
    "title": "DigiPrivilege – Hotel Booking System",
    "image": "https://images.unsplash.com/photo-1505691723518-36a5ac3be353",
    "details": [
      "Developed a hotel booking platform with room listings, availability checks, secure reservation flow, check-in/out, pricing rules, discounts, and booking history.",
      "Integrated backend APIs with an optimized, fast, and smooth UI/UX for reliable hotel management.",
    ],
  }),
];






final List<Skill> skills = [
  // ---------- FLUTTER / MOBILE ----------
  Skill(
    name: "Dart",
    category: "Flutter / Mobile",
    level: 90,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg",
  ),
  Skill(
    name: "Flutter",
    category: "Flutter / Mobile",
    level: 90,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
  ),
  Skill(
    name: "Android App Development",
    category: "Flutter / Mobile",
    level: 85,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/android/android-original.svg",
  ),

  Skill(
    name: "iOS App Development",
    category: "Flutter / Mobile",
    level: 75,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg",
  ),

  Skill(
    name: "Flutter Web Development",
    category: "Flutter / Mobile",
    level: 39,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg",
  ),
  Skill(
    name: "Provider / GetX / Bloc",
    category: "Flutter / Mobile",
    level: 85,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/5968/5968350.png",
  ),
  Skill(
    name: "REST API Integration",
    category: "Flutter / Mobile",
    level: 85,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/2165/2165004.png",
  ),
  Skill(
    name: "Firebase (Auth, Firestore, FCM)",
    category: "Flutter / Mobile",
    level: 80,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg",
  ),
  Skill(
    name: "SQLite / SharedPreferences",
    category: "Flutter / Mobile",
    level: 80,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/sqlite/sqlite-original.svg",
  ),
  Skill(
    name: "Responsive UI",
    category: "Flutter / Mobile",
    level: 85,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/1055/1055687.png",
  ),
  Skill(
    name: "App Store Deployment",
    category: "Flutter / Mobile",
    level: 70,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/apple/apple-original.svg",
  ),
  Skill(
    name: "Play Store Release",
    category: "Flutter / Mobile",
    level: 75,
    imageUrl:
        "https://upload.wikimedia.org/wikipedia/commons/7/78/Google_Play_Store_badge_EN.svg",
  ),

  // ---------- BACKEND ----------
  Skill(
    name: "Node.js",
    category: "Backend (Node.js)",
    level: 40,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nodejs/nodejs-original.svg",
  ),
  Skill(
    name: "Express.js",
    category: "Backend (Node.js)",
    level: 35,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/express/express-original.svg",
  ),
  Skill(
    name: "REST APIs",
    category: "Backend (Node.js)",
    level: 45,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/2165/2165004.png",
  ),
  Skill(
    name: "JWT Authentication",
    category: "Backend (Node.js)",
    level: 50,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/2913/2913465.png",
  ),
  Skill(
    name: "MongoDB / MySQL",
    category: "Backend (Node.js)",
    level: 20,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/mongodb/mongodb-original.svg",
  ),
  Skill(
    name: "API Security",
    category: "Backend (Node.js)",
    level: 20,
    imageUrl: "https://cdn-icons-png.flaticon.com/512/3064/3064197.png",
  ),

  // ---------- TOOLS ----------
  Skill(
    name: "Git / GitHub",
    category: "Tools",
    level: 85,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg",
  ),
  Skill(
    name: "Postman",
    category: "Tools",
    level: 80,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postman/postman-original.svg",
  ),
  Skill(
    name: "VS Code",
    category: "Tools",
    level: 90,
    imageUrl:
        "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg",
  ),
];