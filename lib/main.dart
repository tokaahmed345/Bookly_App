import 'package:bookly/core/utils/colors/colors.dart';
import 'package:bookly/core/utils/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
routerConfig: AppRoute.router,
      debugShowCheckedModeBanner: false,
      //
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        scaffoldBackgroundColor: AppColors.kPrimaryColor),
   
    );
  }
}
