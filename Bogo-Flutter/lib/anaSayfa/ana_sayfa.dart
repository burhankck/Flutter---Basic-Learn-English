import 'package:bogo/Dersler/dersler.dart';
import 'package:bogo/Quiz/sorular/quiz.dart';
import 'package:bogo/Quizler/QuizSayfasi.dart';
import 'package:bogo/Teknoloji/Teknoloji1.dart';
import 'package:bogo/const/text_renk.dart';
import 'package:bogo/hayvanlar/hayvan.dart';
import 'package:bogo/k%C4%B1yafetler/k%C4%B1yafet1.dart';
import 'package:bogo/mevsimler/mevsimler1.dart';
import 'package:bogo/renkler/renkler1.dart';
import 'package:bogo/yiyecekler/yiyecekler1.dart';
import 'package:flutter/material.dart';

import 'package:bogo/dogrulama/giris.dart';
import 'package:bogo/global/global.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
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
      backgroundColor: Colors.white,
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
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  Image.asset(
                    'images/cocuk22.jpg',
                    width: 500,
                    height: 230,
                  ),
                  Center(
                    child: Text(
                      'Lütfen Seçim Yapınız',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HayvanSayfasi()));
                        },
                        child: Text(
                          'Hayvanlar',
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Renkler1()));
                        },
                        child: Text(
                          'Renkler',
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
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Kiyafet1()));
                        },
                        child: Text(
                          'Kıyafetler',
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => yiyecekler1()));
                        },
                        child: Text(
                          'Yiyecek & İçecek',
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
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Mevsimler1()));
                        },
                        child: Text('Mevsim & Gün & Ay',
                            style: TextStyle(fontSize: 13)),
                        style: ElevatedButton.styleFrom(
                          primary: Renkler.primaryColor,
                          shape: StadiumBorder(),
                          side: BorderSide(color: Colors.black, width: 4),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Teknoloji1()));
                        },
                        child: Text(
                          'Teknoloji',
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
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quizs()));
              },
              icon: Icon(Icons.arrow_right_alt_rounded),
              label: Text(
                'Alıştırma Yapmayı  Unutmayınız...',
                style: TextStyle(fontSize: 13),
              ),
              style: ElevatedButton.styleFrom(primary: Renkler.primaryColor),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dersler()));
              },
              icon: Icon(Icons.arrow_right_alt_rounded),
              label: Text(
                '         Dersler İçin Tıklayınız...          ',
                style: TextStyle(fontSize: 13),
              ),
              style: ElevatedButton.styleFrom(primary: Renkler.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
