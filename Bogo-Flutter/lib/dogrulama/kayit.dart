import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bogo/anaSayfa/ana_sayfa.dart';
import 'package:bogo/araclar/custom_Text_F.dart';
import 'package:bogo/araclar/hata_diyaloglari.dart';
import 'package:bogo/araclar/yukleme_diyaloglari.dart';
import 'package:firebase_storage/firebase_storage.dart' as fStorage;
import 'package:bogo/const/text_renk.dart';
import 'package:bogo/dogrulama/giris.dart';
import 'package:bogo/global/global.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KayitEkrani extends StatefulWidget {
  const KayitEkrani({Key? key}) : super(key: key);

  @override
  _KayitEkraniState createState() => _KayitEkraniState();
}

class _KayitEkraniState extends State<KayitEkrani> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController adController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController sifreController = TextEditingController();
  TextEditingController sifreTekrarController = TextEditingController();

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();

  String kullaniciImageUrl = "";

  Future<void> _getImage() async {
    imageXFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageXFile;
    });
  }

  Future<void> formValidation() async {
    if (imageXFile == null) {
      showDialog(
          context: context,
          builder: (c) {
            return HataDiyalog(
              message: "Lütfen Cinsiyet Belirtiniz.",
            );
          });
    } else {
      if (sifreController.text == sifreTekrarController.text) {
        if (sifreTekrarController.text.isNotEmpty &&
            mailController.text.isNotEmpty) {
          showDialog(
              context: context,
              builder: (c) {
                return YuklemeDiyalog(
                  message: "Hesap Oluşturuluyor",
                );
              });
          String fileName = DateTime.now().microsecondsSinceEpoch.toString();
          fStorage.Reference reference = fStorage.FirebaseStorage.instance
              .ref()
              .child("kullanicilar")
              .child(fileName);
          fStorage.UploadTask uploadTask =
              reference.putFile(File(imageXFile!.path));
          fStorage.TaskSnapshot taskSnapshot =
              await uploadTask.whenComplete(() {});
          await taskSnapshot.ref.getDownloadURL().then((url) {
            kullaniciImageUrl = url;

            //save info to firestore
            kimlikDogrulamasiSaticiVeGiris();
          });
        } else {
          showDialog(
              context: context,
              builder: (c) {
                return HataDiyalog(
                  message: "Lütfen gerekli yerleri doldurun. ",
                );
              });
        }
      } else {
        showDialog(
            context: context,
            builder: (c) {
              return HataDiyalog(
                message: "Eşleşmeyen Şifre ",
              );
            });
      }
    }
  }

  void kimlikDogrulamasiSaticiVeGiris() async {
    User? currentUser;

    await firebaseAuth
        .createUserWithEmailAndPassword(
      email: mailController.text.trim(),
      password: sifreController.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user;
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
      saveDataToFilestore(currentUser!).then((value) {
        Navigator.pop(context);
        // send user to anasayfa
        Route newRoute = MaterialPageRoute(builder: (c) => AnaSayfa());
        Navigator.pushReplacement(context, newRoute);
      });
    }
  }

  Future saveDataToFilestore(User currentUser) async {
    FirebaseFirestore.instance
        .collection("kullanicilar")
        .doc(currentUser.uid)
        .set({
      "kullaniciiUID": currentUser.uid,
      "kullaniciEmail": currentUser.email,
      "kullaniciResimUrl": kullaniciImageUrl,
    });

    //save data locally
    sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences!.setString("uid", currentUser.uid);
    await sharedPreferences!.setString("email", currentUser.email.toString());
    await sharedPreferences!.setString("ad", adController.text.trim());
    await sharedPreferences!.setString("photoUrl", kullaniciImageUrl);
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
          Positioned(
            top: 64,
            left: -10,
            child: _iconBack(),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      _getImage();
                    },
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width * 0.25,
                      backgroundColor: Colors.white,
                      backgroundImage: imageXFile == null
                          ? null
                          : FileImage(File(imageXFile!.path)),
                      child: imageXFile == null
                          ? Icon(
                              Icons.add_photo_alternate,
                              size: MediaQuery.of(context).size.width * 0.20,
                              color: Colors.grey,
                            )
                          : null,
                    ),
                  ),
                  _image(),
                  _TextUser(),
                  SizedBox(height: 10),
                  _TextUser2(),
                  SizedBox(height: 10),
                  _TextUser3(),
                  SizedBox(height: 10),
                  _TextKayit(),
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
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Renkler.primaryGiris, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: sifreController,
        decoration: InputDecoration(
            hintText: 'Şifre',
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

  Widget _iconBack() {
    return IconButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => GirisSayfasi()));
        },
        icon: Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget _TextUser3() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
          color: Renkler.primaryGiris, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        controller: sifreTekrarController,
        decoration: InputDecoration(
            hintText: 'Şifre Tekrarı',
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

  Widget _TextKayit() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 90, vertical: 5),
      child: ElevatedButton(
        onPressed: () {
          formValidation();
        },
        child: const Text('Kayıt Ol'),
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
      'KAYIT',
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          fontFamily: 'NimbusSans'),
    );
  }
}
