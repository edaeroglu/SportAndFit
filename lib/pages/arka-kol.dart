import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/on-kol.dart';

class ArkaKol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Arka Kol (Triceps)'),
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
                        image: AssetImage('assets/images/triceps.jpg'),
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
                  '''-Bir yatak, bir sandalye veya bir bench sehpasına sırtınız dönük vaziyette ayakta durun ve her iki elinizi omuz genişliğinde kullandığınız ekipmanın üzerine koyun.
-Bacaklarınızı öne doğru uzatın. 
-Ön kolunuz 90 derecelik bir açı oluşturuncaya kadar, dirseklere doğru esneterek vücudunuzu yavaşça indirin. 
-Arka kolunuzu kullanarak kendinizi başlangıç pozisyonuna getirin.''',
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
                              builder: (context) => OnKol(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.orangeAccent[100],
                                Colors.orangeAccent[400]
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
                            "Sonraki egzersiz; Ön Kol(Biceps)",
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
