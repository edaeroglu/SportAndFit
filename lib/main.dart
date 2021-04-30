import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/bacak.dart';
import 'pages/baslangic.dart';
import 'pages/bilgiler.dart';
import 'pages/bolgeler.dart';
import 'pages/giris-ekrani.dart';
import 'pages/kalca.dart';
import 'pages/kardiyo.dart';
import 'pages/karin.dart';
import 'pages/kol.dart';
import 'pages/tumvucut.dart';

void main() {
  runApp(SporUyg());
}

class SporUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Baslangic(),
        '/giris': (context) => GirisEkrani(),
        '/bolge': (context) => BolgeEkrani(),
        '/kol': (context) => KolEkrani(),
        '/bacak': (context) => BacakEkrani(),
        '/karin': (context) => KarinEkrani(),
        '/kalca': (context) => KalcaEkrani(),
        '/tumvucut': (context) => TumVucutEkrani(),
        '/kardiyo': (context) => KardiyoEkrani(),
        '/bilgi': (context) => BilgiEkrani(),
      },
    );
  }
}
