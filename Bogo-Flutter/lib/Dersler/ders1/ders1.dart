import 'package:bogo/Dersler/ders1/ders11.dart';
import 'package:bogo/Dersler/ders2/ders2.dart';
import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders1 extends StatefulWidget {
  const ders1({Key? key}) : super(key: key);

  @override
  State<ders1> createState() => _ders1State();
}

class _ders1State extends State<ders1> {
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
                'Şimdiki Zaman Present Continuous Tense',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'O esnada yapılmakta olan eylemleri anlatmak için Present Continuous Tense, yani Şimdiki Zaman kullanılır. I yanına am, He, She ve It zamirlerinin yanına is, They, You, We zamirlerinin yanına ise are getirilir. Kurallara uygun bir şekilde cümle kurabilmek için fiilin sonuna -ing eklenmelidir.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow(['Özne', 'To Be Fiilleri', 'Fiil Yapısı'],
                        isHeader: true),
                    buildRow(['I', 'am', 'Fiil + ing']),
                    buildRow(['You', 'are', 'Fiil + ing']),
                    buildRow(['We', 'are', 'Fiil + ing']),
                    buildRow(['They', 'are', 'Fiil + ing']),
                    buildRow(['He', 'is', 'Fiil + ing']),
                    buildRow(['She', 'is', 'Fiil + ing']),
                    buildRow(['It', 'is', 'Fiil + ing']),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text('Şimdiki Zaman Cümle Yapıları',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['Olumlu Cümle', 'I am playing tennis.']),
                    buildRow(['Olumlu Cümle', 'He is  playing tennis.']),
                    buildRow(['Olumsuz Cümle', 'He is not playing tennis.']),
                    buildRow(['Olumsuz Cümle', ' I am not  playing tennis.']),
                    buildRow(['Soru Cümlesi', 'Are we playing tennis?']),
                    buildRow(['Soru Cümlesi', 'Is he playing tennis?']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 91),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 91, left: 280),
                        child: FloatingActionButton(
                          heroTag: 'FloatingActionButton3',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ders11()));
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
