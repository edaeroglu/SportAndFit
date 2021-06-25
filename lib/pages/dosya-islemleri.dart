import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(SporUyg());
}

class SporUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan[800],
      ),
      home: dosyaIslemleri(),
    );
  }
}

class dosyaIslemleri extends StatefulWidget {
  @override
  _dosyaIslemleriState createState() => _dosyaIslemleriState();
}

class _dosyaIslemleriState extends State {
  Future<String> get getDosyaYolu async {
    Directory dosya = await getApplicationDocumentsDirectory();
    return dosya.path;
  }

  Future get dosyaOlustur async {
    var dosyakonumu = await getDosyaYolu;
    return File(dosyakonumu + "/olusturulandosya.txt");
  }

  Future dosyaYaz(String dosyaninIcerigi) async {
    var myDosya = await dosyaOlustur;

    return myDosya.writeAsString(dosyaninIcerigi);
  }

  Future<String> okunacakDosya() async {
    try {
      var myDosya = await dosyaOlustur;

      String dosyaicerigi = myDosya.readAsStringSync();
      return dosyaicerigi;
    } catch (exception) {
      debugPrint("HATA :$exception");
    }
  }

  TextEditingController mycontroller = TextEditingController();
  var gosterilecekDeger = "";
  var key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[100],
        key: key,
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text("Dosya işlemleri"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: mycontroller,
                      maxLines: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          onPressed: _Yaz,
                          color: Colors.pink[300],
                          child: Text("Dosya'ya Yaz"),
                        ),
                        RaisedButton(
                          onPressed: _Oku,
                          color: Colors.pink[800],
                          child: Text("Dosya'dan Oku"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          child: Text("$gosterilecekDeger"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void _Yaz() async {
    dosyaYaz(mycontroller.text.toString()).then((value) {
      setState(() {
        gosterilecekDeger = value.toString();
      });
      showInSnackBar("Başarıyla kaydedildi");
    });
  }

  void _Oku() async {
    okunacakDosya().then((String deger) {
      setState(() {
        gosterilecekDeger = deger;
        debugPrint("$gosterilecekDeger");
      });
    });
  }

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text(value),
      duration: Duration(seconds: 5),
    ));
  }
}
