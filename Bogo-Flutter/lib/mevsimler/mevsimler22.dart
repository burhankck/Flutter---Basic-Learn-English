import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/mevsimler/mevsimler10.dart';
import 'package:bogo/mevsimler/mevsimler12.dart';
import 'package:bogo/mevsimler/mevsimler17.dart';
import 'package:bogo/mevsimler/mevsimler18.dart';
import 'package:bogo/mevsimler/mevsimler19.dart';
import 'package:bogo/mevsimler/mevsimler20.dart';
import 'package:bogo/mevsimler/mevsimler21.dart';
import 'package:bogo/mevsimler/mevsimler5.dart';
import 'package:bogo/mevsimler/mevsimler9.dart';

import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';

import 'mevsimler11.dart';
import 'mevsimler13.dart';
import 'mevsimler14.dart';
import 'mevsimler15.dart';
import 'mevsimler16.dart';
import 'mevsimler23.dart';



class Mevsimler22 extends StatefulWidget {
  const Mevsimler22({Key? key}) : super(key: key);

  @override
  State<Mevsimler22> createState() => _Mevsimler22State();
}

class _Mevsimler22State extends State<Mevsimler22> {
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
                   
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Kasım',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'November',
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
                          MaterialPageRoute(builder: (context) => Mevsimler21()));
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
                                  builder: (context) => Mevsimler23()));
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
