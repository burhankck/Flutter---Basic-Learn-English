import 'package:bogo/Teknoloji/Teknoloji1.dart';
import 'package:bogo/Teknoloji/Teknoloji2.dart';
import 'package:bogo/Teknoloji/Teknoloji3.dart';
import 'package:bogo/Teknoloji/Teknoloji4.dart';
import 'package:bogo/Teknoloji/Teknoloji5.dart';
import 'package:bogo/Teknoloji/Teknoloji6.dart';
import 'package:bogo/Teknoloji/Teknoloji9.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';

import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';

import 'Teknoloji7.dart';
import 'Teknoloji8.dart';

class Teknoloji10 extends StatefulWidget {
  const Teknoloji10({Key? key}) : super(key: key);

  @override
  State<Teknoloji10> createState() => _Teknoloji10State();
}

class _Teknoloji10State extends State<Teknoloji10> {
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
                      'images/utuu.png',
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
                  'Ütü',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Iron',
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
                              builder: (context) => Teknoloji9()));
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
