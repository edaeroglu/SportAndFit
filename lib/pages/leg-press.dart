import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/bacak.dart';

class LegPress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
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
                        image: AssetImage('assets/images/leg press.jpg'),
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
                    fontSize: 45,
                    color: Colors.cyan[900],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''-Makinenin sırt kısmını kendinize uygun açıya getirin. 
-Uygun ağırlıkları takın ve makineye oturun. 
-Ayaklarınız standart pozisyonda bir omuz genişliği kadar açık olmalı ve parmak uçları karşıya bakmalı.
-Ayaklarınızı itme yüzeyine sağlam bir şekilde konumlandırdıktan sonra biraz itip makinenin kilitlerini boşa çıkartın.
-Nefes alarak  dizlerinizi bükmeye başlayın ve ağırlığı kontrollü bir şekilde aşağı indirin. 
-Sırtınız tamamen sehpaya dayalı olacak. Kesinlikle belinize ya da kalçanıza bir es vermeyin. 
-Son noktaya kadar dizlerinizi kendinize doğru çekin.
-Nefes vererek ağırlığı yukarı doğru itmeye başlayın. 
-Son noktaya geldiğinizde dizleriniz bir miktar kırık olmalı.
-Tepe noktasına ulaştığınızda 1 saniye kadar bekleyip nefes alarak ağırlığı tekrar aşağı indirin.''',
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
                              builder: (context) => BacakEkrani(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.purple[100],
                                Colors.purple[400]
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
