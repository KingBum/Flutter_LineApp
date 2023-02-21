import 'package:flutter/material.dart';
import 'package:manager/widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class VoomScreen extends StatefulWidget {
  const VoomScreen({Key? key}) : super(key: key);
  static const routeName = "/hiddenScreen";

  @override
  State<VoomScreen> createState() => _VoomScreenState();
}

class _VoomScreenState extends State<VoomScreen> {
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
                        "LINE ROOM",
                        style: TextStyle(fontSize: 26),
                      ),
                      Spacer(),
                      Icon(
                        Icons.add,
                        color: AppColor.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 16,
                      ),
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
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(10),
                                child: Image.asset(
                                  Helper.getAssetName("1111.png", "real"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -4,
                            right: -4,
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColor.dark, width: 4),
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColor.greenhaha),
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: AppColor.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cau chuyen",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 50,
              bottom: 450,
              child: Column(children: [
                Text(
                  "Hay bat dau LINE VOOM !",
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("LINE VOOM - noi hoi tu ban be!",
                    style: TextStyle(
                      color: AppColor.primary,
                    )),
                SizedBox(
                  height: 10,
                ),
                Text("Hay chia se thog tin voi ban be",
                    style: TextStyle(
                      color: AppColor.primary,
                    )),
              ]),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: CustomNavBar(
                  home: false,
                  conv: false,
                  voom: true,
                  call: false,
                )),
          ],
        ),
      ),
    );
  }
}
