import 'package:data_keluarga/config/AppColor.dart';
import 'package:data_keluarga/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 540),
      builder: (_, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
          theme: ThemeData.light().copyWith(
        primaryColor: AppColor.primary,
        colorScheme: ColorScheme.light(
          primary: AppColor.primary,
          secondary: AppColor.secondary,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColor.primary,
          foregroundColor: Colors.white
        )
      ),
        );
      },
      child: HomePage(),
    );
  }
}