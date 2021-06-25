import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/karin.dart';

class BicycleCrunch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Leg Press'),
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
                        image: AssetImage('assets/images/biycle crunch.jpg'),
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
                  '''-Sırtınızı yere yaslayarak, dizleriniz bükülmüş şekilde yere uzanın. 
-Ayaklarınız havada ve elleriniz başınızın arkasında olmalıdır.
-Sol bacağınızı yaklaşık 45 derecelik bir açıyla uzatırken, sol dirseğinizi sağ dizinize doğru getirerek üst bedeninizi sağa çevirin. Aynı tekrarı diğer bacağınızla uygulayın.
-Bisiklet pedalı çeviriyormuş gibi bacaklarınızla üst vücudunuzu uyum içerisinde hareket ettirin.
-Boynunuzdan destek almayın, dirseklerinizi değil, göğüs kafesinizi döndürmeye odaklanın.
-Gövdeniz tüm rotasyonu yapıyor olmalı. Kalçalarınız dönmemeli, bacaklarınızı düz ileri ve geri hareket ettirmelisiniz. 
-Manevra sırasında belinizi yere bastırın.''',
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
                              builder: (context) => KarinEkrani(),
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
                            "Ana Sayfaya Dön",
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
