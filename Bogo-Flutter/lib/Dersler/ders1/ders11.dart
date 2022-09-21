import 'package:bogo/Dersler/ders1/ders1.dart';
import 'package:bogo/Dersler/ders1/ders12.dart';
import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';

class ders11 extends StatefulWidget {
  const ders11({Key? key}) : super(key: key);

  @override
  State<ders11> createState() => _ders11State();
}

class _ders11State extends State<ders11> {
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
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'Geniş Zaman Simple Present Tense',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                '‘Simple Present Tense’ dediğimiz şey, Türkçede ‘Geniş Zaman’ anlamına geliyor. İngilizcedeki karşılığı da aslında tam olarak bu. ‘Basit Şimdiki Zaman’ gibi bir çevrimi olsa da hobilerden, alışkanlıklardan, genel doğrulardan bahsederken kullanılan, şu anı değil, genel olarak her zamanı kapsayan bir kullanımı var.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['Özne', 'Fiil Yapısı'], isHeader: true),
                    buildRow(['I', 'Fiilin 1. Hali']),
                    buildRow(['You', 'Fiilin 1. Hali']),
                    buildRow(['We', 'Fiilin 1. Hali']),
                    buildRow(['They', 'Fiilin 1. Hali']),
                    buildRow(['He', 'Fiil + s']),
                    buildRow(['She', 'Fiil + s']),
                    buildRow(['It', 'Fiil + s']),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Geniş Zaman Cümle Yapıları',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['Olumlu Cümle', 'He plays tennis.']),
                    buildRow(['Olumlu Cümle', 'I play tennis.']),
                    buildRow(['Olumsuz Cümle', 'He does not play tennis.']),
                    buildRow(['Olumsuz Cümle', ' I do not  play tennis.']),
                    buildRow(['Soru Cümlesi', 'Do I play tennis?']),
                    buildRow(['Soru Cümlesi', 'Does he play tennis?']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 90),
                    child: FloatingActionButton(
                      heroTag: 'FloatingActionButton2',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders1()));
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
                        padding: EdgeInsets.only(top: 90, left: 280),
                        child: FloatingActionButton(
                          heroTag: 'FloatingActionButton3',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ders12()));
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
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
          final style = TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          );
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              cell,
              style: style,
            )),
          );
        }).toList(),
      );

  TableRow buildRow1(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
          final style = TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          );
          return Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
                child: Text(
              cell,
              style: style,
            )),
          );
        }).toList(),
      );
}
