
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:wilson_wings_design/view/home_Page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context,Orientation,ScreenType) {
        return MaterialApp(
          title: 'Wilson Wings Design',
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            fontFamily:"NotoSans",
            useMaterial3: true,
          ),
          home: const HomePage(),
        );
      }
    );
  }
}
