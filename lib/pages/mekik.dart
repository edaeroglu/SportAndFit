import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/flutter-kicks.dart';

class Mekik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Mekik'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 200,
                  height: 160,
                  margin: EdgeInsets.only(top: 20, left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/mekik.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Yapılışı;',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 40,
                    color: Colors.cyan[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''-Sırt üstü yat, dizlerin kırılı ve ayak tabanların yerde olsun. Dizlerin kalça hizasında açık olmalı.
-Ellerini başının arkasına yerleştir ama parmaklarını birbirine geçirme. Başparmakların kulaklarının arkasına gelsin.
-Dirseklerini dışa doğru açık tut, hafifçe içe dönük olsunlar. 
-Çeneni hafif yukarı kaldır, göğsün ve çenen arasında boşluk olsun.
-Karnını içeri çek. Başın, boynun ve kürek kemiklerin aynı anda yerden kalksın.
-Tepe noktadayken 1–2 saniye bekle. 
-Aşağı yavaşça in.''',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 28,
                    color: Colors.cyan[800],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlutterKicks(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.greenAccent[100],
                                Colors.greenAccent[400]
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Sonraki egzersiz ; Flutter Kicks",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
