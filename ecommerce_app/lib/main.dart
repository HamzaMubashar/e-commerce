import 'package:ecommerce_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ecommerce',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFAFAFA)),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: MainScreen(),
    );
  }
}
