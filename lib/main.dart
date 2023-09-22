import 'package:flutter/material.dart';
import 'package:flutter_fic7_seller_app/seller_pages/dashboard/seller_dashboard_page.dart';
import 'package:flutter_fic7_seller_app/utils/light_themes.dart';

import 'pages/dashboard/dashboard_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: light,
      home: const SellerDashboardPage(),
    );
  }
}
