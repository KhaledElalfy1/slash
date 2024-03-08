import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash/core/utils/app_theme.dart';
import 'package:slash/features/home/presentation/view/home.dart';

class Slash extends StatelessWidget {
  const Slash({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize:const Size(412, 915),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme:appTheme(),
        home:const Home(),
      ),
    );
  }
}
