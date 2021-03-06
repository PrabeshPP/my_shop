import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shop/utils/theme.dart';
import 'package:my_shop/view_model/cubit/page_cubit.dart';
import 'package:my_shop/views/home/home_page.dart';
import 'package:my_shop/views/login/register.dart';


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
      home:  BlocProvider<PageCubit>(
        create: (context) => PageCubit(),
        child:HomePage(),
      ),
      themeMode: ThemeMode.light,
      theme: MyAppTheme.lightTheme(),
    );
  }
}
