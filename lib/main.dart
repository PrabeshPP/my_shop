import 'package:flutter/material.dart';
import 'package:my_shop/utils/theme.dart';
import 'package:my_shop/views/onboarding_screen/onboarding_page_2.dart';
import 'package:my_shop/views/onboarding_screen/onboarding_page_3.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Page3(),
      themeMode: ThemeMode.light,
      theme: MyAppTheme.lightTheme(),
    );
  }
}
