import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/yiyecekler/yiyecekler13.dart';
import 'package:bogo/yiyecekler/yiyecekler14.dart';
import 'package:bogo/yiyecekler/yiyecekler15.dart';
import 'package:bogo/yiyecekler/yiyecekler16.dart';
import 'package:bogo/yiyecekler/yiyecekler17.dart';
import 'package:bogo/yiyecekler/yiyecekler18.dart';
import 'package:bogo/yiyecekler/yiyecekler19.dart';
import 'package:bogo/yiyecekler/yiyecekler20.dart';
import 'package:bogo/yiyecekler/yiyecekler21.dart';
import 'package:bogo/yiyecekler/yiyecekler22.dart';
import 'package:bogo/yiyecekler/yiyecekler23.dart';
import 'package:bogo/yiyecekler/yiyecekler24.dart';
import 'package:bogo/yiyecekler/yiyecekler25.dart';
import 'package:bogo/yiyecekler/yiyecekler26.dart';
import 'package:bogo/yiyecekler/yiyecekler27.dart';
import 'package:bogo/yiyecekler/yiyecekler28.dart';
import 'package:bogo/yiyecekler/yiyecekler29.dart';

import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';

class yiyecekler30 extends StatefulWidget {
  const yiyecekler30({Key? key}) : super(key: key);

  @override
  State<yiyecekler30> createState() => _yiyecekler30State();
}

class _yiyecekler30State extends State<yiyecekler30> {
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
                      'images/patlican.png',
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
                  'Patlıcan',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Aubergine',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => yiyecekler29()));
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
                                  builder: (context) => AnaSayfa()));
                        },
                        backgroundColor: Colors.purple,
                        child: Icon(Icons.home),
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
