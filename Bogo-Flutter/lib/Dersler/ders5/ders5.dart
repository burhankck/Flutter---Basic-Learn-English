import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders5 extends StatefulWidget {
  const ders5({Key? key}) : super(key: key);

  @override
  State<ders5> createState() => _ders5State();
}

class _ders5State extends State<ders5> {
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
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text(
                'In, On, At Kullanımı',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Dilimizde bir olayın tarihini, süregelen faaliyetlerin gerçekleşme zamanını ya da gelecekte gerçekleşmesi öngörülen olayların tahmini saatini belirtirken “-de, -da” bulunma halini kullanırız. İngilizce dilinde bu bulunma hali “in on at” edatları ile sağlanır.',
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['Haftalarda In Kullanımı', 'In 3 weeks.']),
                    buildRow1(['Aylarda In Kullanımı', 'In june.']),
                    buildRow1(
                        ['Yıllarda In Kullanımı', 'In 1970 / In five years.']),
                    buildRow1([
                      'Mevsimlerde In Kullanımı',
                      ' I am not  playing tennis.'
                    ]),
                    buildRow1(['Günlerde On Kullanımı', 'On fridays.']),
                    buildRow1(['Tarihlerde On Kullanımı', 'On January 15.']),
                    buildRow1(
                        ['Özel Günlerde On Kullanımı', 'On my birthday.']),
                    buildRow1(
                        ['Özel Günlerde On Kullanımı', 'On Christmas Day.']),
                    buildRow1(['Saatlerde At Kullanımı', 'at 5 o clock.']),
                    buildRow1(['Gün İçinde At Kullanımı', 'At night.']),
                    buildRow1([
                      'Gün İçinde At Kullanımı',
                      'At noon.',
                    ]),
                    buildRow1(
                        ['Özel Kutlamalarda At Kullanımı', 'At Ramadan.']),
                    buildRow1([
                      'Kesin Zaman Diliminde At Kullanımı',
                      'At dinner time.'
                    ]),
                    buildRow1([
                      'Kesin Zaman Diliminde At Kullanımı',
                      'At breakfast time.'
                    ]),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 87),
                    child: FloatingActionButton(
                      heroTag: 'FloatingActionButton2',
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Dersler()));
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
