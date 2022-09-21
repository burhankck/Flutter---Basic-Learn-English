import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/araclar/hata_diyaloglari.dart';
import 'package:bogo/araclar/yukleme_diyaloglari.dart';
import 'package:bogo/const/text_renk.dart';
import 'package:bogo/dogrulama/kayit.dart';
import 'package:bogo/global/global.dart';

import '../araclar/custom_Text_F.dart';

class GirisSayfasi extends StatefulWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController mailController = TextEditingController();
  TextEditingController sifreController = TextEditingController();

  formValidation() {
    if (mailController.text.isNotEmpty && sifreController.text.isNotEmpty) {
      //giris
      simdiGiris();
    } else {
      showDialog(
          context: context,
          builder: (c) {
            return HataDiyalog(
              message: "Lütfen Mail/Şifre Giriniz.",
            );
          });
    }
  }

  simdiGiris() async {
    showDialog(
        context: context,
        builder: (c) {
          return YuklemeDiyalog(
            message: "Giriş Bilgileri Kontrol ediliyor",
          );
        });
    User? currentUser;
    await firebaseAuth
        .signInWithEmailAndPassword(
      email: mailController.text.trim(),
      password: sifreController.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user!;
    }).catchError((error) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (c) {
            return HataDiyalog(
              message: error.message.toString(),
            );
          });
    });
    if (currentUser != null) {
      verileriOkuVeAyarla(currentUser!).then((value) {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (c) => const AnaSayfa()));
      });
    }
  }

  Future verileriOkuVeAyarla(User currentUser) async {
    await FirebaseFirestore.instance
        .collection("kullanicilar")
        .doc(currentUser.uid)
        .get()
        .then((snapshot) async {
      await sharedPreferences!.setString("uid", currentUser.uid);
      await sharedPreferences!
          .setString("email", snapshot.data()!["kullaniciEmail"]);
      await sharedPreferences!
          .setString("photoUrl", snapshot.data()!["kullaniciResimUrl"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(top: -60, left: -100, child: _girisLogo()),
          Positioned(
            child: _girisYazi(),
            top: 75,
            left: 35,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _image(),
                  _TextUser(),
                  _TextUser2(),
                  _buttonLogin(),
                  _textKayit(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget _TextUser() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Renkler.primaryGiris, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: mailController,
        decoration: InputDecoration(
            hintText: 'E-mail',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Renkler.primaryColor),
            prefixIcon: Icon(
              Icons.mail,
              color: Renkler.primaryColor,
            )),
      ),
    );
  }

  Widget _TextUser2() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      decoration: BoxDecoration(
          color: Renkler.primaryGiris, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: sifreController,
        decoration: InputDecoration(
            hintText: 'Sifre',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: Renkler.primaryColor),
            prefixIcon: Icon(
              Icons.lock,
              color: Renkler.primaryColor,
            )),
      ),
    );
  }

  Widget _buttonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          formValidation();
        },
        child: const Text('Giris'),
        style: ElevatedButton.styleFrom(
            primary: Renkler.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            padding: EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }

  Widget _image() {
    return Container(
      margin: EdgeInsets.only(
          top: 20, bottom: MediaQuery.of(context).size.height * 0.12),
      child: Image.asset(
        'images/burhan3.png',
        width: 240,
        height: 240,
      ),
    );
  }

  Widget _girisLogo() {
    return Container(
      width: 240,
      height: 240,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Renkler.primaryColor),
    );
  }

  Widget _girisYazi() {
    return const Text(
      'GİRİS',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: 'NimbusSans'),
    );
  }

  Widget _textKayit() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hesabınız Yok mu ?',
          style: TextStyle(color: Colors.black),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KayitEkrani()));
          },
          child: Text(
            'Hesap Oluştur.',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
