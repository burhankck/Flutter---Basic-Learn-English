import 'package:bogo/Dersler/ders1/ders1.dart';
import 'package:bogo/Dersler/ders1/ders11.dart';
import 'package:bogo/Dersler/ders2/ders2.dart';
import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders13 extends StatefulWidget {
  const ders13({Key? key}) : super(key: key);

  @override
  State<ders13> createState() => _ders13State();
}

class _ders13State extends State<ders13> {
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
              SizedBox(height: 20),
              Text(
                'Gelecek Zaman Future Tense',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Future Tense, gelecek zamanda yaşanacak olayları aktarmaktadır. İngilizce gelecek zaman olarak da ifade edilen bu konu, gelecekte gerçekleşecek veya gerçekleşmeyecek olan olay ve durumları anlatmak için kullanılmaktadır.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['Özne', 'To Be Fiilleri', 'Fiil Yapısı'],
                        isHeader: true),
                    buildRow(['I', 'am', 'Going to + Fiil']),
                    buildRow(['You', 'are', 'Going to + Fiil']),
                    buildRow(['We', 'are', 'Going to + Fiil']),
                    buildRow(['They', 'are', 'Going to + Fiil']),
                    buildRow(['He', 'is', 'Going to + Fiil']),
                    buildRow(['She', 'is', 'Going to + Fiil']),
                    buildRow(['It', 'is', 'Going to + Fiil']),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Gelecek Zaman Cümle Yapıları',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['Olumlu Cümle', 'I am going to  playtennis.']),
                    buildRow(['Olumlu Cümle', 'You are going to play tennis.']),
                    buildRow(
                        ['Olumsuz Cümle', 'I am not going to play tennis.']),
                    buildRow(
                        ['Olumsuz Cümle', ' He is not going to play tennis.']),
                    buildRow(['Soru Cümlesi', 'Are you going to play tennis?']),
                    buildRow(['Soru Cümlesi', 'Is he going to play tennis?']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 97),
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
                        padding: EdgeInsets.only(top: 97, left: 280),
                        child: FloatingActionButton(
                          heroTag: 'FloatingActionButton3',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dersler()));
                          },
                          backgroundColor: Colors.purple,
                          child: Icon(Icons.home),
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
