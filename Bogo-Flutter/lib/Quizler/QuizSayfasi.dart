import 'package:bogo/Quiz/sorular/Quiz.dart';
import 'package:bogo/Quiz/sorular/Quiz1.dart';

import 'package:bogo/Quizs2/Quizs1.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const/text_renk.dart';

class Quizs extends StatefulWidget {
  const Quizs({Key? key}) : super(key: key);

  @override
  State<Quizs> createState() => _QuizsState();
}

class _QuizsState extends State<Quizs> {
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
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(padding: const EdgeInsets.only(bottom: 0)),
            Container(
                child: Column(
              children: [
                SizedBox(
                  height: 300,
                  child: Image.asset(
                    'images/quiztime.png',
                    width: 400,
                    height: 400,
                  ),
                )
              ],
            )),
            SizedBox(height: 0),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Quiz()));
                    },
                    child: Text(
                      'Quiz 1',
                      style: TextStyle(fontSize: 13),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Renkler.primaryColor,
                      shape: StadiumBorder(),
                      side: BorderSide(color: Colors.black, width: 4),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Quizs1()));
                    },
                    child: Text(
                      'Quiz 2',
                      style: TextStyle(fontSize: 13),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Renkler.primaryColor,
                      shape: StadiumBorder(),
                      side: BorderSide(color: Colors.black, width: 4),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 86),
                  child: FloatingActionButton(
                    heroTag: 'FloatingActionButton2',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AnaSayfa()));
                    },
                    backgroundColor: Colors.purple,
                    child: Icon(Icons.home),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
