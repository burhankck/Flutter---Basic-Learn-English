import 'package:bogo/hayvanlar/hayvan2.dart';
import 'package:bogo/hayvanlar/hayvan7.dart';
import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';

import 'hayvan.dart';
import 'hayvan1.dart';
import 'hayvan11.dart';
import 'hayvan12.dart';
import 'hayvan13.dart';
import 'hayvan14.dart';
import 'hayvan15.dart';
import 'hayvan17.dart';
import 'hayvan3.dart';
import 'hayvan4.dart';
import 'hayvan5.dart';
import 'hayvan6.dart';
import 'hayvan8.dart';
import 'hayvan9.dart';

class HayvanSayfasi16 extends StatefulWidget {
  const HayvanSayfasi16({Key? key}) : super(key: key);

  @override
  State<HayvanSayfasi16> createState() => _HayvanSayfasi16State();
}

class _HayvanSayfasi16State extends State<HayvanSayfasi16> {
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
                      'images/kaplan1.png',
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
                  'Kaplan',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Tiger',
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
                              builder: (context) => HayvanSayfasi15()));
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
                                  builder: (context) => HayvanSayfasi17()));
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
