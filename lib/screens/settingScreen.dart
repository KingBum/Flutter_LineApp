import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);
  static const routeName = "/settingScreen";

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  )
                ],
              ),
            ),
            centerTitle: true,
            backgroundColor: AppColor.dark),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
                child: Container(
                  color: AppColor.dark,
                  width: Helper.getScreenWidth(context),
                  height: Helper.getScreenHeight(context) * 2.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          color: AppColor.primary,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                            child: Row(
                              children: [
                                Icon(Icons.search,size: 30, color: AppColor.secondary,),
                                SizedBox(width: 10,),
                                Text("Tim kiem", style: TextStyle(color: AppColor.secondary),),
                                Spacer(),
                                Icon(Icons.qr_code_scanner,size: 30, color: AppColor.secondary,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
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
                            SizedBox(width: 20,),
                            Text("Ho so", style: TextStyle(fontSize: 24),),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.arrow_forward_ios, color: AppColor.primary, size: 30,),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Thong tin ca nhan",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryCard(
                        icon: Icons.credit_card,
                        name: "Quan li tai khoan",
                      ),
                      CategoryCard(
                        icon: Icons.lock_outline,
                        name: "Bao mat thong tin ca nhan",
                      ),
                      CategoryCard(
                        icon: Icons.bookmark_outline,
                        name: "Keep",
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Sao luu va chuyen",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryCard(
                        icon: Icons.create_new_folder_outlined,
                        name: "Sao luu va khoi phuc lich su tro chuyen",
                      ),
                      CategoryCard(
                        icon: Icons.qr_code_scanner,
                        name: "Ma QR",
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Cua hang",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryCard(
                        icon: Icons.emoji_emotions_outlined,
                        name: "Quan li Sticker",
                      ),
                      CategoryCard(
                        icon: Icons.palette_outlined,
                        name: "Theme",
                      ),
                      CategoryCard(
                        icon: Icons.savings_outlined,
                        name: "Quan ly Coins",
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Chung",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryCard(
                        icon: Icons.notifications_outlined,
                        name: "Cai dat thong bao",
                      ),
                      CategoryCard(
                        icon: Icons.image_outlined,
                        name: "Anh & Video",
                      ),
                      CategoryCard(
                        icon: Icons.sms_outlined,
                        name: "Tro chuyen",
                      ),CategoryCard(
                        icon: Icons.call_outlined,
                        name: "Cuoc goi",
                      ),CategoryCard(
                        icon: Icons.group_outlined,
                        name: "Quan ly ban be",
                      ),CategoryCard(
                        icon: Icons.group_outlined,
                        name: "LINE VOOM",
                      ),CategoryCard(
                        icon: Icons.account_circle_outlined,
                        name: "Anh dai dien",
                      ),CategoryCard(
                        icon: Icons.language_outlined,
                        name: "Languege",
                      ),CategoryCard(
                        icon: Icons.science_outlined,
                        name: "LINE Labs",
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          "Thong tin ung dung",
                          style: TextStyle(
                              fontSize: 20,
                              color: AppColor.primary,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      CategoryCard(
                        icon: Icons.campaign_outlined,
                        name: "Thong bao",
                      ),
                      CategoryCard(
                        icon: Icons.help_outline_outlined,
                        name: "Trung tam tro giup",
                      ),
                      CategoryCard(
                        icon: Icons.info_outline,
                        name: "Thong tin LINE",
                      ),

                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    IconData? icon,
    required String name,
  })  : _icon = icon,
        _name = name,
        super(key: key);

  final String _name;
  final IconData? _icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4, right: 8, left: 8),
      child: Container(
          width: MediaQuery.of(context).size.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(_icon, color: AppColor.white, size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  width: 200,
                  child: Text(
                    _name,
                    style:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                )
                ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.arrow_forward_ios, color: AppColor.primary, size: 30,),
              )
            ],
          )),
    );
  }
}
