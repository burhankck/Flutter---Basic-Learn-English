import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders6 extends StatefulWidget {
  const ders6({Key? key}) : super(key: key);

  @override
  State<ders6> createState() => _ders6State();
}

class _ders6State extends State<ders6> {
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
                'Sayılar',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
              Center(
                child: Table(
                  border: TableBorder.all(),
                  children: [
                    buildRow1(['İngilizce Sayılar', 'Türkçe Karşılığı']),
                    buildRow1(['0', 'Zero']),
                    buildRow1(['1', 'One']),
                    buildRow1(['2', 'Two']),
                    buildRow1(['3', 'Three']),
                    buildRow1(['4', 'Four']),
                    buildRow1(['5', 'Five']),
                    buildRow1(['6', 'Six']),
                    buildRow1(['7', 'Seven']),
                    buildRow1(['8', 'Eight']),
                    buildRow1(['9', 'Nine']),
                    buildRow1(['10', 'Ten']),
                    buildRow1(['11', 'Eleven']),
                    buildRow1(['12', 'Twelve']),
                    buildRow1(['13', 'Thirteen']),
                    buildRow1(['14', 'Fourteen']),
                    buildRow1(['15', 'Fifteen']),
                    buildRow1(['16', 'Sixteen']),
                    buildRow1(['17', 'Seventeen']),
                    buildRow1(['18', 'Eighteen']),
                    buildRow1(['19', 'Nineteen']),
                    buildRow1(['20', 'Twenty']),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 17),
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
