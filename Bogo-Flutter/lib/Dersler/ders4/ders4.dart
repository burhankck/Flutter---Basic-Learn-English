import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../dersler.dart';

class ders4 extends StatefulWidget {
  const ders4({Key? key}) : super(key: key);

  @override
  State<ders4> createState() => _ders4State();
}

class _ders4State extends State<ders4> {
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'images/time.png',
                        width: 400,
                        height: 250,
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
                      'İngilizce Saatler',
                      'Türkçe Karşılığı',
                    ], isHeader: true),
                    buildRow([
                      'It is ten past five ?',
                      'Saat beşi on geçiyor.',
                    ]),
                    buildRow([
                      'It is twenty past eleven.',
                      'Saat on biri yirmi geçiyor.',
                    ]),
                    buildRow([
                      'It is sixteen minutes past five',
                      'Saat beşi on altı geçiyor.',
                    ]),
                    buildRow([
                      'It is quarter past five.',
                      'Saat beşi çeyrek geçiyor.',
                    ]),
                    buildRow([
                      'It is quarter past eleven.',
                      'Saat on biri çeyrek geçiyor.',
                    ]),
                    buildRow([
                      'It is twenty five to six.',
                      'Saat altıya yirmi beş var.',
                    ]),
                    buildRow([
                      'It is ten to twelve.',
                      'Saat on ikiye on var.',
                    ]),
                    buildRow([
                      'It is twelve minutes to six.',
                      'Saat altıya on iki var.',
                    ]),
                    buildRow([
                      'It is twenty seven minutes to twelve.',
                      'Saat on ikiye yirmi yedi var.',
                    ]),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 70),
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
