import 'package:flutter/material.dart';

import '../const/colors.dart';
import '../screens/homeScreen.dart';
import '../screens/convScreen.dart';
import '../screens/voomScreen.dart';
import '../screens/callScreen.dart';
import '../utils/helper.dart';


class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key, required this.home, required this.conv, required this.voom, required this.call}) : super(key: key);
  final bool home;
  final bool conv;
  final bool voom;
  final bool call;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: Helper.getScreenWidth(context),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
              width: Helper.getScreenWidth(context),
              padding: const EdgeInsets.symmetric(horizontal: 30),
              color: AppColor.dark,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (!home) {
                        Navigator.of(context)
                            .pushReplacementNamed(HomeScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        home
                            ? Icon(Icons.home, size: 30, color: AppColor.white,)
                            : Icon(Icons.home_outlined, size: 30, color: AppColor.white),
                        home
                            ? Text("Home",
                            style: TextStyle( color: AppColor.white))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!conv) {
                        Navigator.of(context)
                            .pushReplacementNamed(ConvScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        conv
                            ? Icon(Icons.sms, size: 30, color: AppColor.white)
                            : Icon(Icons.sms_outlined, size: 30, color: AppColor.white),
                        conv
                            ? Text("Tro chuyen",
                            style: TextStyle( color: AppColor.white))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!voom) {
                        Navigator.of(context)
                            .pushReplacementNamed(VoomScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        voom
                            ? Icon(Icons.group, size: 30, color: AppColor.white)
                            : Icon(Icons.group_outlined, size: 30, color: AppColor.white),
                        voom
                            ? Text("Voom",
                            style: TextStyle( color: AppColor.white))
                            : Text(""),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (!call) {
                        Navigator.of(context)
                            .pushReplacementNamed(CallScreen.routeName);
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        call
                            ? Icon(Icons.call, size: 30, color: AppColor.white)
                            : Icon(Icons.call_outlined, size: 30, color: AppColor.white),
                        call
                            ? Text("C.goi",
                            style: TextStyle( color: AppColor.white))
                            : Text(""),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
