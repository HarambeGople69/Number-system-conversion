import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Onboardings.dart';

void main() {
  runApp(MyApp());
}
// 360, 740

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 740),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Number System Convertor",
        theme: ThemeData(primaryColor: Color(0xfff96060), fontFamily: "avenir"),
        home: SplashScreen(),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), completed);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));

    return Scaffold(
      body: Center(
        child: Container(
          width: ScreenUtil().setHeight(550),
          height: ScreenUtil().setWidth(450),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/image/final.png"),
                  fit: BoxFit.cover)),
        ),
      ),
    );
  }

  void completed() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Onboardings()));
  }
}
