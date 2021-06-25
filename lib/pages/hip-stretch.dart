import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/tumvucut.dart';

class HipStretch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Hip Stretch'),
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
                        image: AssetImage('assets/images/hip stretch.jpg'),
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
                  '''-Dört ayak pozisyonunda dur, sağ bacağını vücudunun önüne gelecek şekilde yerleştir. 
-Sol bacağını geride düz uzat. 
-Sırtını dik tut. 
-Ellerini vücudunun gerisinde birleştir ve kollarını arkaya doğru uzat. 
-Birkaç saniye bu pozisyonda kal. 
-Ardından kollarını vücudunun önüne doğru getirip dirseklerini ve başını yere koy.
-Bu pozisyonda 15-20 saniye kal ve hareketi diğer tarafta tekrarla.''',
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
                              builder: (context) => TumVucutEkrani(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[Colors.red[100], Colors.red[400]],
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
