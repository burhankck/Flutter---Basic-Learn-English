import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders3 extends StatefulWidget {
  const ders3({Key? key}) : super(key: key);

  @override
  State<ders3> createState() => _ders3State();
}

class _ders3State extends State<ders3> {
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/soruu.png',
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow([
                      'İngilizce Wh Kalıpları',
                      'Türkçe Karşılığı',
                    ], isHeader: true),
                    buildRow([
                      'What ?',
                      'Ne ?',
                    ]),
                    buildRow([
                      'Who ?',
                      'Kim ?',
                    ]),
                    buildRow([
                      'Whose ?',
                      'Kimin ?',
                    ]),
                    buildRow([
                      'When ?',
                      'Ne Zaman ?',
                    ]),
                    buildRow([
                      'Where ?',
                      'Nerede ?',
                    ]),
                    buildRow([
                      'Which ?',
                      'Hangi ?',
                    ]),
                    buildRow([
                      'Why ?',
                      'Neden ?',
                    ]),
                    buildRow([
                      'How ?',
                      'Nasıl ?',
                    ]),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 60),
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
