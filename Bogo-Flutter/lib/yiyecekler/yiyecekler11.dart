
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/yiyecekler/yiyecekler1.dart';
import 'package:bogo/yiyecekler/yiyecekler10.dart';
import 'package:bogo/yiyecekler/yiyecekler12.dart';
import 'package:bogo/yiyecekler/yiyecekler2.dart';
import 'package:bogo/yiyecekler/yiyecekler3.dart';
import 'package:bogo/yiyecekler/yiyecekler4.dart';
import 'package:bogo/yiyecekler/yiyecekler5.dart';
import 'package:bogo/yiyecekler/yiyecekler6.dart';
import 'package:bogo/yiyecekler/yiyecekler7.dart';
import 'package:bogo/yiyecekler/yiyecekler8.dart';
import 'package:bogo/yiyecekler/yiyecekler9.dart';

import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';





class yiyecekler11 extends StatefulWidget {
  const yiyecekler11({Key? key}) : super(key: key);

  @override
  State<yiyecekler11> createState() => _yiyecekler11State();
}

class _yiyecekler11State extends State<yiyecekler11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title:
            Image.asset('images/burhan3.png', fit: BoxFit.contain, height: 60),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple,
        flexibleSpace: GestureDetector(
          onTap: () {},
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage("images/egitim.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'images/makarna.png',
                      width: 400,
                      height: 250,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Makarna',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Pasta',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 0),
                  child: FloatingActionButton(
                    heroTag: 'FloatingActionButton2',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yiyecekler10()));
                    },
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.arrow_left_sharp),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 280),
                      child: FloatingActionButton(
                        heroTag: 'FloatingActionButton3',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => yiyecekler12()));
                        },
                        backgroundColor: Colors.purple,
                        child: Icon(Icons.arrow_right_sharp),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
