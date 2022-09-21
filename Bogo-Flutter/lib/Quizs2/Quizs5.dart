import 'dart:async';

import 'package:bogo/Quizs2/Quizs2.dart';
import 'package:bogo/Quizs2/Quizs6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Quizs5 extends StatefulWidget {
  const Quizs5({Key? key}) : super(key: key);

  @override
  State<Quizs5> createState() => _Quizs5State();
}

class _Quizs5State extends State<Quizs5> {
  @override
  var buttonText = 'Are';
  var buttonText2 = 'do ';
  var buttonText3 = 'does';
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
                    MaterialPageRoute(builder: (context) => Quizs6())));
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
            SizedBox(
              height: 200,
              child: Container(
                child: Center(
                    child: Text(
                  'He ____ born at 1881.',
                  style: TextStyle(fontSize: 20),
                )),
              ),
            ),
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
                  SizedBox(height: 30),
                  const Text(
                    'Yukarıdaki Boşluğa Aşağıdaki Kelimelerden  Hangisi Gelmelidir ?',
                    textAlign: TextAlign.justify,
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
                                    builder: (context) => Quizs6()));
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
                          child: Text('Is'),
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
