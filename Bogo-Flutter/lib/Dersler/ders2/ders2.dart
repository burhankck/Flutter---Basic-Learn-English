import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders2 extends StatefulWidget {
  const ders2({Key? key}) : super(key: key);

  @override
  State<ders2> createState() => _ders2State();
}

class _ders2State extends State<ders2> {
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
              Table(
                border: TableBorder.all(),
                children: [
                  buildRow([
                    'İngilizce Özneler',
                    'Türkçe Karşılığı',
                  ], isHeader: true),
                  buildRow([
                    'I',
                    'Ben',
                  ]),
                  buildRow([
                    'You',
                    'Sen',
                  ]),
                  buildRow([
                    'We',
                    'Biz',
                  ]),
                  buildRow([
                    'They',
                    'Onlar',
                  ]),
                  buildRow([
                    'He',
                    'Erkek / O',
                  ]),
                  buildRow([
                    'She',
                    'Kadın / O',
                  ]),
                  buildRow([
                    'It',
                    'Cansız-Hayvan / O',
                  ]),
                  buildRow([
                    'İngilizce Nesne Zamirleri',
                    'Türkçe Karşılığı',
                  ], isHeader: true),
                  buildRow([
                    'Me',
                    'Beni / Bana',
                  ]),
                  buildRow([
                    'You',
                    'Seni / Sana',
                  ]),
                  buildRow([
                    'Him',
                    'Erkek/ Ona-Onu',
                  ]),
                  buildRow([
                    'Her',
                    'Kadın / Ona-Onu',
                  ]),
                  buildRow([
                    'It',
                    'Cansız-Hayvan / Ona-Onu',
                  ]),
                  buildRow([
                    'Us',
                    'Size / Sizi',
                  ]),
                  buildRow([
                    'Them',
                    'Onlara / Onları',
                  ]),
                  buildRow([
                    'İngilizce İyelik Sıfatları',
                    'Türkçe Karşılığı',
                  ], isHeader: true),
                  buildRow([
                    'My',
                    'Benim',
                  ]),
                  buildRow([
                    'Your',
                    'Senin',
                  ]),
                  buildRow([
                    'His',
                    'Erkek / Onun',
                  ]),
                  buildRow([
                    'Her',
                    'Kadın / Onun',
                  ]),
                  buildRow([
                    'Its',
                    'Hayvan-Cansız Varlık / Onun',
                  ]),
                  buildRow([
                    'Our',
                    'Bizim',
                  ]),
                  buildRow([
                    'Your',
                    'Sizin',
                  ]),
                  buildRow([
                    'Their',
                    ' Onların',
                  ]),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
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
}
