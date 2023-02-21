import 'package:flutter/material.dart';
import 'package:manager/widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);
  static const routeName = "/favoritesScreen";

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.dark,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26, top: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "C.goi",
                        style: TextStyle(fontSize: 26),
                      ),
                      Spacer(),
                      Icon(
                        Icons.person_outline,
                        color: AppColor.white,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Positioned(
              right: 50,
              bottom: 450,
              child: Column(children: [
                Text(
                  "Goi dien moi luc, moi noi!",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  child: Text("Thoa suc tro chuyen voi ban be moi luc voi cuoc goi thoai cua LINE",
                      style: TextStyle(
                        color: AppColor.primary,
                      ), textAlign: TextAlign.center,),
                ),
                  ElevatedButton(onPressed: () {}, child: Text("Tim kiem danh ba"))
              ]),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: CustomNavBar(
                  home: false,
                  conv: false,
                  voom: false,
                  call: true,
                )),
          ],
        ),
      ),
    );
  }
}

