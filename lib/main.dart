import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saher/pages/basket_page.dart';
import 'package:saher/pages/liked_page.dart';
import 'package:saher/pages/profil_page.dart';
import 'package:saher/theme.dart';
import 'app_start.dart';
import 'pages/category_page.dart';
import 'pages/main_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Säher',
      theme: AppTheme.light(),
      home: AppStart(),
    );
  }
}






