import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/mevsimler/mevsimler10.dart';
import 'package:bogo/mevsimler/mevsimler13.dart';
import 'package:bogo/mevsimler/mevsimler5.dart';
import 'package:bogo/mevsimler/mevsimler9.dart';

import 'package:flutter/material.dart';

import 'package:bogo/const/text_renk.dart';
import 'package:flutter/material.dart';

import 'mevsimler11.dart';



class Mevsimler12 extends StatefulWidget {
  const Mevsimler12({Key? key}) : super(key: key);

  @override
  State<Mevsimler12> createState() => _Mevsimler12State();
}

class _Mevsimler12State extends State<Mevsimler12> {
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
                  'Ocak',
                  style: TextStyle(color: Renkler.primaryColor, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'January',
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
                          MaterialPageRoute(builder: (context) => Mevsimler11()));
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
                                  builder: (context) => Mevsimler13()));
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
