import 'package:bogo/renkler/renkler4.dart';
import 'package:bogo/renkler/renkler6.dart';
import 'package:flutter/material.dart';
import 'package:bogo/const/text_renk.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';

class Renkler5 extends StatefulWidget {
  const Renkler5({Key? key}) : super(key: key);

  @override
  State<Renkler5> createState() => _Renkler5State();
}

class _Renkler5State extends State<Renkler5> {
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
          children: [Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'images/turuncu.png',
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
                  'Turuncu',
                  style: TextStyle(color: Colors.purple, fontSize: 45),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Orange',
                  style: TextStyle(color: Colors.purple, fontSize: 45),
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
                          MaterialPageRoute(builder: (context) => Renkler4()));
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
                                  builder: (context) => Renkler6()));
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
