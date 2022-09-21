import 'dart:async';

import 'package:bogo/Quiz/sorular/Quiz6.dart';
import 'package:bogo/Quizler/QuizSayfasi.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:flutter/material.dart';

import 'Quiz7.dart';

class Quiz9 extends StatefulWidget {
  const Quiz9({Key? key}) : super(key: key);

  @override
  State<Quiz9> createState() => _Quiz9State();
}

class _Quiz9State extends State<Quiz9> {
  @override
  var buttonText = 'Çay  / Water ';
  var buttonText2 = 'Şeker  /  Salt';
  var buttonText3 = 'Elma  /  Banana';
  Duration duration = const Duration();
  Timer? _timer;
  int _start = 20;
  bool _clickedButton = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // startTimer();
    startTimer(_clickedButton);
  }

  void startTimer(bool clickedButton) {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0 || clickedButton == true) {
          setState(() {
            timer.cancel();
            debugPrint(clickedButton.toString());
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                padding: const EdgeInsets.all(10),
                elevation: 5,
                backgroundColor: clickedButton ? Colors.green : Colors.red,
                content: Row(
                  children: [
                    clickedButton
                        ? Icon(Icons.check, color: Colors.black)
                        : Icon(Icons.warning_amber_sharp, color: Colors.black),
                    Text(
                      //if (clickedbutton == true){ cevabınız dopru} else {süreniz doldu}
                      clickedButton
                          ? '               CEVABINIZ DOĞRU             '
                          : '               SÜRENİZ DOLDU !!!               ',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    clickedButton
                        ? Icon(Icons.check, color: Colors.black)
                        : Icon(Icons.warning_amber_sharp, color: Colors.black),
                  ],
                )));

            Future.delayed(
                const Duration(seconds: 3),
                () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Quizs())));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.07), BlendMode.dstATop),
          image: AssetImage("images/egitim.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(height: 0),
            Padding(padding: const EdgeInsets.only(bottom: 0)),
            Container(
                child: Column(
              children: [
                Image.asset(
                  'images/quız.png',
                  width: 300,
                  height: 220,
                )
              ],
            )),
            SizedBox(height: 0),
            Container(
              child: Center(
                  child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              -0.0,
                              -0.0,
                            ), //Offset
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 6)),
                    child: Text(
                      ' $_start ',
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 15),
                  const Text(
                    'Aşağıdaki Eşleşmelerden  Hangisi Doğrudur ?',
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
            ),
            SizedBox(height: 30),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 0),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonText2 = 'Yanlış Cevap';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.red;
                              }
                              return null;
                            }),
                          ),
                          child: Text(buttonText2),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonText = 'Yanlış Cevap';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.red;
                              }
                              return null;
                            }),
                          ),
                          child: Text(buttonText),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              buttonText3 = 'Yanlış Cevap';
                            });
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.red;
                              }
                              return null;
                            }),
                          ),
                          child: Text(buttonText3),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _clickedButton = true;
                              startTimer(_clickedButton);
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Quizs()));
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.green;
                              }
                              return null;
                            }),
                          ),
                          child: Text('Ekmek / Bread'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
