import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/dogrulama/giris.dart';
import 'package:bogo/global/global.dart';

class MySplashEkrani extends StatefulWidget {
  const MySplashEkrani({Key? key}) : super(key: key);

  @override
  _MySplashEkraniState createState() => _MySplashEkraniState();
}

class _MySplashEkraniState extends State<MySplashEkrani> {
  startTimer() {
    Timer(const Duration(seconds: 1), () async {
      //aktif oturum varsa, içeri al
      if (firebaseAuth.currentUser != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const AnaSayfa()));
      } else {
        //aktif oturum yoksa, giriş yap sayfasına yönlendir
         Navigator.push(
            context, MaterialPageRoute(builder: (c) => const GirisSayfasi()));
        debugPrint(firebaseAuth.currentUser.toString());
        debugPrint('buraya girmedi');
      }
    }
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white24,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("images/cocuk1.png"),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
