import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bogo/Quiz/sorular/Quiz.dart';
import 'package:bogo/Quiz/sorular/Quiz2.dart';
import 'package:bogo/Quiz/sorular/Quiz3.dart';

import 'Quiz5.dart';

class Quiz4 extends StatefulWidget {
  const Quiz4({Key? key}) : super(key: key);

  @override
  State<Quiz4> createState() => _Quiz4State();
}

class _Quiz4State extends State<Quiz4> {
  @override
  var buttonText = 'Perşembe  /  Friday';
  var buttonText2 = 'Cuma /  Tuesday';
  var buttonText3 = 'Salı / Monday';
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
                    MaterialPageRoute(builder: (context) => const Quiz5())));
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
                                    builder: (context) => Quiz5()));
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
                          child: Text('Cumartesi / Saturday'),
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
