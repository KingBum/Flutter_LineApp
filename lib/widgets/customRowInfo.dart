import 'package:flutter/material.dart';

import '../const/colors.dart';


class CustomRowInfo extends StatelessWidget {
  const CustomRowInfo({
    Key? key,
    required IconData icon,
    required String title,
    required String subtitle,
    IconData? iconData,
  })  : _icon = icon,
        _title = title,
        _subtitle = subtitle,
        _iconData = iconData,
        super(key: key);

  final String _title;
  final IconData _icon;
  final String _subtitle;
  final IconData? _iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AppColor.greenhaha),
            child: Icon(_icon, size: 30, color: AppColor.white,),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_title),
              SizedBox(height: 5,),
              Container(
                  width: 200,
                  child: Text(_subtitle, style: TextStyle(color: AppColor.primary, fontSize: 12), maxLines: 2,overflow: TextOverflow.ellipsis,)),
            ],
          ),
          Spacer(),
          Icon(_iconData, size: 30, color: AppColor.primary,),
        ],
      ),
    );
  }
}
