import 'package:manager/screens/loginScreen.dart';
import 'package:manager/screens/registerScreen.dart';

import './screens/splashScreen.dart';

import './screens/detailBookScreen.dart';
import 'package:flutter/material.dart';
import './screens/homeScreen.dart';
import './const/colors.dart';
import './screens/callScreen.dart';
import './screens/convScreen.dart';
import './screens/settingScreen.dart';
import './screens/voomScreen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Metropolis",
        primarySwatch: Colors.red,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              AppColor.dark
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
            elevation: MaterialStateProperty.all(1),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              AppColor.orange,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline3: TextStyle(
            color: AppColor.primary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            color: AppColor.secondary,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          headline5: TextStyle(
            color: AppColor.primary,
            fontWeight: FontWeight.normal,
            fontSize: 25,
          ),
          headline6: TextStyle(
            color: AppColor.primary,
            fontSize: 25,
          ),
          bodyText2: TextStyle(
            color: AppColor.white,
            fontSize: 16,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      home: SplashScreen(),
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CallScreen.routeName: (context) => CallScreen(),
        ConvScreen.routeName: (context) => ConvScreen(),
        SettingScreen.routeName: (context) => SettingScreen(),
        VoomScreen.routeName: (context) => VoomScreen(),
        DetailBookScreen.routeName: (context) => DetailBookScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
      },
    );
  }
}