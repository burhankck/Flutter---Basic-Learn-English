import 'dart:async';
import 'dart:developer';

import 'package:bogo/Quiz/sorular/Quiz1.dart';

import 'package:bogo/Quiz/sorular/Quiz2.dart';
import 'package:bogo/Quiz/sorular/Quiz3.dart';
import 'package:bogo/Quiz/sorular/quiz1.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({
    Key? key,
  }) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  var buttonText = 'Kedi / Dog';
  var buttonText2 = 'Kedi / Lion';
  var buttonText3 = 'Kedi / Bird';
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
    // ignore: unnecessary_new
    _timer = new Timer.periodic(
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
                    MaterialPageRoute(builder: (context) => const Quiz2())));
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
          // ignore: unnecessary_new
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.07), BlendMode.dstATop),
          image: const AssetImage("images/egitim.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            const SizedBox(height: 0),
            const Padding(padding: EdgeInsets.only(bottom: 0)),
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
            const SizedBox(height: 30),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 0),
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
                              buttonText2 = 'Yanlış Cevap';
                              _clickedButton = true;
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
                              _clickedButton = true;
                              startTimer(_clickedButton);
                            });
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Quiz2()));
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
                          child: const Text('Kedi / Cat'),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
