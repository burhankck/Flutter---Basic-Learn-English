import 'package:flutter/material.dart';
import 'package:bogo/araclar/ilerleme_bari.dart';

class YuklemeDiyalog extends StatelessWidget {
  final String? message;

  YuklemeDiyalog({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          SizedBox(
            height: 10,
          ),
          Text(message! + ", Lütfen Bekleyiniz...")
        ],
      ),
    );
  }
}
