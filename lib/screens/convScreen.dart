import 'package:flutter/material.dart';
import 'package:manager/widgets/customRowInfo.dart';
import 'package:manager/widgets/customTopBar.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class ConvScreen extends StatefulWidget {
  const ConvScreen({Key? key}) : super(key: key);
  static const routeName = "/systemScreen";

  @override
  State<ConvScreen> createState() => _ConvScreenState();
}

class _ConvScreenState extends State<ConvScreen> {
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
                      Text("Tro chuyen", style: TextStyle(fontSize: 26),),
                      Spacer(),
                      Icon(Icons.sms_outlined, color: AppColor.white, size: 30,),
                      SizedBox(width: 16,),
                      Icon(Icons.more_vert_outlined, color: AppColor.white, size: 30,),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
                  CustomRowInfo(icon:
                      Icons.bookmark,
                      title: "Ghi chu Keep",
                      subtitle: "Gui vao moi van ban, anh, video va "
                          "link ban muon giu cho rieng minh",
                      iconData: Icons.add_circle_outline_rounded,
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                child: CustomNavBar(
                  home: false,
                  conv: true,
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
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(_link,style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            )),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert_outlined,
                    size: 30,
                  ),
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
