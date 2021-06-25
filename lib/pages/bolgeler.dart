import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/bacak.dart';
import 'package:sport_and_fit_app/pages/kalca.dart';
import 'package:sport_and_fit_app/pages/kardiyo.dart';
import 'package:sport_and_fit_app/pages/karin.dart';
import 'package:sport_and_fit_app/pages/kol.dart';
import 'package:sport_and_fit_app/pages/tumvucut.dart';

class BolgeEkrani extends StatefulWidget {
  @override
  _BolgeEkraniState createState() => _BolgeEkraniState();
}

class _BolgeEkraniState extends State<BolgeEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Egzersiz seçiniz:'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KolEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, left: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/kol kası giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Kol Egzersizleri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BacakEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/bacak kası giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Bacak Egzersizleri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KarinEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, left: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/karın kası giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Karın Egzersizleri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KalcaEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/kalça kası giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Kalça Egzersizleri",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TumVucutEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, left: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/tüm vücut giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Tüm Vücut ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => KardiyoEkrani(),
                                ));
                          },
                          child: Container(
                            width: double.infinity,
                            height: 140,
                            margin:
                                EdgeInsets.only(top: 30, right: 10, bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/kardiyo giriş.jpg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Text(
                          "Kardiyo ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontFamily: 'Merienda',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
