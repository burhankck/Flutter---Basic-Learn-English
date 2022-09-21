import 'package:bogo/Dersler/dersler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ders7 extends StatefulWidget {
  const ders7({Key? key}) : super(key: key);

  @override
  State<ders7> createState() => _ders7State();
}

class _ders7State extends State<ders7> {
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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'En Önemli 100 Fiil !!!',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(
                  child: Table(
                    border: TableBorder.all(),
                    children: [
                      buildRow1(
                          ['1. Hali', '2. Hali', '3. Hali', 'Türkçe Anlamı'],
                          isHeader: true),
                      buildRow1(['awake', 'awoke', 'awoken', 'uyanmak']),
                      buildRow1(['be', 'was,were', 'been', 'olmak']),
                      buildRow1(['beat', 'beat', 'beaten', 'vurmak']),
                      buildRow1(['become', 'bacame', 'become', 'olmak']),
                      buildRow1(['begin', 'began', 'begun', 'bailamak']),
                      buildRow1(['bend', 'bent', 'bent', 'bükmek']),
                      buildRow1(['bet', 'bet', 'bet', 'bahse girmek']),
                      buildRow1(['bid', 'bid', 'bid', 'emretmek']),
                      buildRow1(['bite', 'bit', 'bitten', 'ısırmak']),
                      buildRow1(['blow', 'blew', 'blown', 'esmek']),
                      buildRow1(['break', 'broke', 'broken', 'kırmak']),
                      buildRow1(['bring', 'brought', 'brought', 'getirmek']),
                      buildRow1([
                        'broadcast',
                        'broadcast',
                        'broadcast',
                        'yayımlamak'
                      ]),
                      buildRow1(['bring', 'brought', 'brought', 'getirmek']),
                      buildRow1(['build', 'built', 'built', 'inşa etmek']),
                      buildRow1(['burst', 'burst', 'burst', 'patlamak']),
                      buildRow1(['burn', 'burnt', 'burnt', 'yakmak']),
                      buildRow1(['buy', 'bought', 'bought', 'satın almak']),
                      buildRow1(['catch', 'caught', 'caught', 'yakalamak']),
                      buildRow1(['chouose', 'chose', 'chosen', 'seçmek']),
                      buildRow1(['come', 'came', 'come', 'gelmek']),
                      buildRow1(['cost', 'cost', 'cost', 'değer biçmek']),
                      buildRow1(['creep', 'crept', 'crept', 'emeklemek']),
                      buildRow1(['cut', 'cut', 'cut', 'kesmek']),
                      buildRow1(['deal', 'dealt', 'dealt', 'anlaşmak']),
                      buildRow1(['dig', 'dug', 'dug', 'kazmak']),
                      buildRow1(['do', 'did', 'done', 'yapmak']),
                      buildRow1(['draw', 'drew', 'drawn', 'çekmek']),
                      buildRow1(['dream', 'dreamt', 'dreamt', 'rüya görmek']),
                      buildRow1(['drive', 'drove', 'driven', 'sürmek']),
                      buildRow1(['drink', 'drank', 'drunk', 'içmek']),
                      buildRow1(['eat', 'ate', 'eaten', 'yemek yemek']),
                      buildRow1(['fall', 'fell', 'fallen', 'düşmek']),
                      buildRow1(['feed', 'fed', 'fed', 'beslemek']),
                      buildRow1(['feel', 'felt', 'felt', 'hissetmek']),
                      buildRow1(['fight', 'fought', 'fought', 'dövüşmek']),
                      buildRow1(['find', 'found', 'found', 'bulmak']),
                      buildRow1(['flee', 'fled', 'flown', 'firar etmek']),
                      buildRow1(['fly', 'flew', 'flown', 'uçmak']),
                      buildRow1(
                          ['forbid', 'forbade', 'forbidden', 'yasaklamak']),
                      buildRow1(['forget', 'forgot', 'forgotten', 'unutmak']),
                      buildRow1(['forgive', 'forgave', 'forgiven', 'affetmek']),
                      buildRow1(['freeze', 'froze', 'frozen', 'donmak']),
                      buildRow1(['get', 'got', 'gotten', 'elde etmek']),
                      buildRow1(['give', 'gave', 'given', 'vermek']),
                      buildRow1(['go', 'went', 'gone', 'gitmek']),
                      buildRow1(['grow', 'grew', 'grown', 'büyümek']),
                      buildRow1(['hang', 'hung', 'hung', 'asmak']),
                      buildRow1(['have', 'had', 'had', 'sahip olmak']),
                      buildRow1(['hear', 'heard', 'heard', 'duymak']),
                      buildRow1(['hide', 'hid', 'hidden', 'saklamak']),
                      buildRow1(['hit', 'hit', 'hit', 'vurmak']),
                      buildRow1(['hold', 'held', 'held', 'tutmak']),
                      buildRow1(['hurt', 'hurt', 'hurt', 'yaralamak']),
                      buildRow1(['keep', 'kept', 'kept', 'saklamak']),
                      buildRow1(['know', 'knew', 'known', 'bilmek']),
                      buildRow1(['lay', 'laid', 'laid', 'yaymak']),
                      buildRow1(['lead', 'led', 'led', 'rehberlik etmek']),
                      buildRow1(['learn', 'learnt', 'learnt', 'öğretmek']),
                      buildRow1(['leave', 'left', 'left', 'ayrılmak']),
                      buildRow1(['lend', 'lent', 'lent', 'ödünç vermek']),
                      buildRow1(['let', 'let', 'let', 'izin vermek']),
                      buildRow1(['lie', 'lay', 'lain', 'yalan söylemek']),
                      buildRow1(['lose', 'lost', 'lost', 'kaybetmek']),
                      buildRow1(['make', 'made', 'made', 'yapmak']),
                      buildRow1(['mean', 'meant', 'menant', 'anlamına gelmek']),
                      buildRow1(['meet', 'met', 'met', 'buluşmak']),
                      buildRow1(['pay', 'paid', 'paid', 'ödemek']),
                      buildRow1(['put', 'put', 'put', 'koymak']),
                      buildRow1(['read', 'read', 'read', 'okumak']),
                      buildRow1(['ride', 'rode', 'ridden', 'binmek']),
                      buildRow1(['ring', 'rang', 'rung', 'çalmak']),
                      buildRow1(['rise', 'rose', 'risen', 'yükselmek']),
                      buildRow1(['run', 'ran', 'run', 'koşmak']),
                      buildRow1(['say', 'said', 'said', 'söylemek']),
                      buildRow1(['see', 'saw', 'seen', 'görmek']),
                      buildRow1(['sell', 'sold', 'sold', 'satmak']),
                      buildRow1(['send', 'sent', 'sent', 'göndermek']),
                      buildRow1(['show', 'showed', 'shown', 'göstermek']),
                      buildRow1(['shut', 'shut', 'shut', 'kapamak']),
                      buildRow1(['sing', 'sang', 'sung', 'şarkı söylemek']),
                      buildRow1(['sit', 'sat', 'sat', 'oturmak']),
                      buildRow1(['sleep', 'slept', 'slept', 'uyumak']),
                      buildRow1(['speak', 'spoke', 'spoken', 'konuşmak']),
                      buildRow1(['spend', 'spent', 'spent', 'harcamak']),
                      buildRow1(['stand', 'stood', 'stood', 'ayakta durmak']),
                      buildRow1(['swim', 'swam', 'swum', 'yüzmek']),
                      buildRow1(['take', 'took', 'taken', 'almak']),
                      buildRow1(['teach', 'tought', 'taught', 'öğrenmek']),
                      buildRow1(['tear', 'tore', 'torn', 'yırtmak']),
                      buildRow1(['tell', 'told', 'told', 'anlatmak']),
                      buildRow1(['think', 'thought', 'thought', 'düşünmek']),
                      buildRow1(['throw', 'threw', 'thrown', 'fırlatmak']),
                      buildRow1([
                        'understand',
                        'understood',
                        'understood',
                        'anlamak'
                      ]),
                      buildRow1(['wake', 'woke', 'woken', 'uyanmak']),
                      buildRow1(['wear', 'wore', 'worn', 'giymek']),
                      buildRow1(['win', 'won', 'wo9n', 'kazanmak']),
                      buildRow1(['write', 'wroten', 'written', 'yazmak']),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 21),
                      child: FloatingActionButton(
                        heroTag: 'FloatingActionButton2',
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
