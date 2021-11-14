import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stock_inquiry/value/app_get.dart';
import 'package:stock_inquiry/value/colors.dart';
import 'package:stock_inquiry/view/home_screen.dart';
import 'package:stock_inquiry/view/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness:
        Platform.isAndroid ? Brightness.dark : Brightness.light,
    systemNavigationBarColor: Colors.white,
    systemNavigationBarDividerColor: Colors.grey,
    systemNavigationBarIconBrightness: Brightness.dark,
  ));
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Get.put(AppGet());

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 736),
      //allowFontScaling: true,
      builder: () {
        return GetMaterialApp(
          theme: ThemeData(
              accentColor: AppColors.primaryColor,
              scrollbarTheme: ScrollbarThemeData().copyWith(
                thumbColor: MaterialStateProperty.all(AppColors.primaryColor),
              ),
              // fontFamily: "Tajawal-Regular",
              // scaffoldBackgroundColor: AppColors.primaryColor,
              primaryColor: AppColors.primaryColor),
          debugShowCheckedModeBanner: false,
          locale: Locale('en'),
          fallbackLocale: Locale('en'),
          localizationsDelegates: [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en', 'US'),
          ],
          home: HomeScreen(),
        );
      },
    );
  }
}
