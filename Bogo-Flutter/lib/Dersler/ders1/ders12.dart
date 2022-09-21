import 'package:bogo/Dersler/ders1/ders1.dart';
import 'package:bogo/Dersler/ders1/ders11.dart';
import 'package:bogo/Dersler/ders2/ders2.dart';
import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dersler13.dart';

class ders12 extends StatefulWidget {
  const ders12({Key? key}) : super(key: key);

  @override
  State<ders12> createState() => _ders12State();
}

class _ders12State extends State<ders12> {
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
                'Geçmiş Zaman Simple Past Tense',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                '‘Simple Past Tense yani Türkçe karşılığıyla İngilizce geçmiş zaman şimdiki zamandan önce bir zaman diliminde tamamlanmış olan eylemleri ifade ederken kullanılır. Simple Past Tense’de eylemin gerçekleşme süreci önemli değildir. Asıl durum o eylemin geçmişte tamamlanmış olmasıdır. Eylem geçmişte yakın bir zamanda ya da uzun bir zaman önce olabilir.Bazı fiiller -ed takısı alırken, bazı fiiller direkt olarak değişir.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['Özne', 'Fiil Yapısı'], isHeader: true),
                    buildRow(['I', 'Fiil + -ed / 2. Hali']),
                    buildRow(['You', 'Fiil + -ed / 2. Hali']),
                    buildRow(['We', 'Fiil + -ed / 2. Hali']),
                    buildRow(['They', 'Fiilin 1. Hali']),
                    buildRow(['He', 'Fiil + -ed / 2. Hali']),
                    buildRow(['She', 'Fiil + -ed / 2. Hali']),
                    buildRow(['It', 'Fiil + -ed / 2. Hali']),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Geçmiş Zaman Cümle Yapıları',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['Olumlu Cümle', 'He played tennis.']),
                    buildRow(['Olumlu Cümle', 'I drank water.']),
                    buildRow(['Olumsuz Cümle', 'He did not play tennis.']),
                    buildRow(['Olumsuz Cümle', ' I did not  play tennis.']),
                    buildRow(['Soru Cümlesi', 'Did you play tennis?']),
                    buildRow(['Soru Cümlesi', 'Did he play tennis?']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 41),
                    child: FloatingActionButton(
                      heroTag: 'FloatingActionButton2',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ders11()));
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
                        padding: EdgeInsets.only(top: 41, left: 280),
                        child: FloatingActionButton(
                          heroTag: 'FloatingActionButton3',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ders13()));
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
