import 'package:bogo/Dersler/ders1/ders1.dart';
import 'package:bogo/Dersler/ders2/ders2.dart';
import 'package:bogo/Dersler/ders3/ders3.dart';
import 'package:bogo/Dersler/ders4/ders4.dart';
import 'package:bogo/Dersler/ders5/ders5.dart';
import 'package:bogo/Dersler/ders6/ders6.dart';
import 'package:bogo/Dersler/ders7/ders7.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../const/text_renk.dart';

class Dersler extends StatefulWidget {
  const Dersler({Key? key}) : super(key: key);

  @override
  State<Dersler> createState() => _DerslerState();
}

class _DerslerState extends State<Dersler> {
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
        child: Center(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders1()));
                      },
                      child: Text(
                        'Ders 1.  Zamanlar',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders2()));
                      },
                      child: Text(
                        'Ders 2. Özne, Nesne, Zamir',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders3()));
                      },
                      child: Text(
                        'Ders 3.  Wh Soruları',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders4()));
                      },
                      child: Text(
                        'Ders 4.  Saatler ',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders5()));
                      },
                      child: Text(
                        'Ders 5.  In, On, At',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders6()));
                      },
                      child: Text(
                        'Ders 6.  Sayılar',
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
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders7()));
                      },
                      child: Text(
                        'Ders 7.  Fiil Yapıları',
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
                    padding: EdgeInsets.only(top: 45),
                    child: FloatingActionButton(
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
        ),
      ),
    );
  }
}
