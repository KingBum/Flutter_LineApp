import 'package:manager/screens/settingScreen.dart';
import 'package:manager/widgets/customTopBar.dart';
import 'package:popover/popover.dart';
import './detailBookScreen.dart';
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      Icon(Icons.bookmark_outline, color: AppColor.white, size: 30,),
                      SizedBox(width: 16,),
                      Icon(Icons.notifications_outlined, color: AppColor.white, size: 30,),
                      SizedBox(width: 16,),
                      Icon(Icons.person_add_alt_1_outlined, color: AppColor.white, size: 30,),
                      SizedBox(width: 16,),
                      IconButton(
                        icon: Icon(Icons.settings_outlined, color: AppColor.white, size: 30,),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SettingScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                          SizedBox(height: 10,),
                          Text("Nhap trang thai cua ban,", style: TextStyle(color: AppColor.secondary),),
                        ],
                      ),
                      Spacer(),
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
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
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
                  SizedBox(height: 20,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Danh sach ban be"),
                            Spacer(),
                            Text("Xem tat ca", style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColor.greenhaha),
                                child: Icon(
                                  Icons.person_add_alt_1_outlined, size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Them ban"),
                                  SizedBox(height: 5,),
                                  Text("THem ban be va bat dau tro chuyen", style: TextStyle(color: AppColor.primary, fontSize: 12),)
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_outlined, size: 30, color: AppColor.primary,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(16),
                                margin: EdgeInsets.only(right: 12),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: AppColor.greenhaha),
                                child: Icon(
                                  Icons.group_add_outlined, size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Tao nhom"),
                                  SizedBox(height: 5,),
                                  Text("Tap hop ban be vao cuoc tro chuyen nhom", overflow: TextOverflow.ellipsis, style: TextStyle(color: AppColor.primary, fontSize: 12),)
                                ],
                              ),
                              Spacer(),
                              Icon(Icons.arrow_forward_ios_outlined, size: 30, color: AppColor.primary,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            Text("Dich vu"),
                            Spacer(),
                            Text("Xem toan bo", style: TextStyle(color: AppColor.primary),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.sentiment_satisfied_outlined, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("Sticker", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),
                              SizedBox(width: 20,),Column(
                                children: [
                                  Icon(Icons.palette_outlined, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("Theme", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),
                              SizedBox(width: 20,),Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.security_outlined, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("TK Chinh Thuc", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),SizedBox(width: 20,),Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.savings_outlined, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("Earn Money", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),SizedBox(width: 20,),Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_balance_wallet_outlined, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("Wallet", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),SizedBox(width: 20,),Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add_circle_outline_rounded, color: AppColor.white, size: 40,),
                                  SizedBox(height: 5,),
                                  Container(
                                      width: 80,
                                      child: Text("Them", style: TextStyle(color: AppColor.secondary),textAlign: TextAlign.center,))
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: CustomNavBar(
                  home: true,
                  conv: false,
                  voom: false,
                  call: false,
                )),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required Image image,
    required String name,
    required String link,
  })  : _image = image,
        _name = name,
        _link = link,
        super(key: key);

  final String _name;
  final Image _image;
  final String _link;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15), // Image border
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(48), // Image radius
                          child: _image,
                        ),
                      )),
                  SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _name,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 24, fontWeight: FontWeight.bold, color: AppColor.primary),
                        ),
                        Text(_link,style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                        )),
                      ],
                    ),
                  ),
                  Spacer(),
                  Button()
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    icon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.file_download_outlined,
                        size: 30,
                        color: AppColor.primary,
                      ),
                    ),
                    label: Text("Extract",
                        style:
                            TextStyle(fontSize: 16, color: AppColor.primary)),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Share APK",
                    style: TextStyle(fontSize: 16, color: AppColor.bluebold),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.height,
                color: Colors.black26,
              )
            ],
          ),
        ));
  }
}



class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: GestureDetector(
        child: const Center(child: Icon(Icons.more_vert_outlined, size: 30,)),
        onTap: () {
          showPopover(
            context: context,
            bodyBuilder: (context) => const ListItems(),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            backgroundColor: Colors.white,
            width: 150,
            height: 180,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..push(
                    MaterialPageRoute<SecondRoute>(
                      builder: (context) => SecondRoute(),
                    ),
                  );
              },
              child: Container(
                height: 40,
                child: const Center(child: Text('Open', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
              ),
            ),
            const Divider(),
            Container(
              height: 40,
              child: const Center(child: Text('Uninstall', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
            ),
            const Divider(),
            Container(
              height: 40,
              child: const Center(child: Text('Upload', style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),)),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Back'),
        ),
      ),
    );
  }
}
