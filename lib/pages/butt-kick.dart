import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/burpees.dart';

class ButtKick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Butt Kick'),
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
                        image: AssetImage('assets/images/butt kick.jpg'),
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
                  '''-Kollarınız yanınızda olacak şekilde, ayağınızla kalça mesafesi ile ayakta durmaya başlayın.
-Çarpma kası kasılmasını sağlayarak sağ topuğunuzu yavaşça kalçalarınıza getirin.
-Sağ ayağınızın topunu tekrar yere koyun ve yavaşça sol topağınızı kalçalarınıza getirin.
-Bu hareketi birkaç kez daha uygulayın.
-Hazır olduğunuzda, sağ ve sol topuklu ayakkabılarınızı değiştirmeye devam edin, koşu yaptığınız gibi hissedinceye kadar hızınızı artırın.
-Vücudunuzun üst kısmını aynı anda çalıştırmak için, bu hareketi yaparken kollarınızı pompalayın. Sol topuğunuz kalçalarınızı tekmeliyorsa, sağ kolunuzu 90 derecelik bir açıyla ileri doğru pompalayın. Sağ topuğunuz tekme atıyorsa, sol kolunuzu ileri doğru pompalayın.
-Hızlı bacak devrine odaklanarak tatbikatı en az 30 saniye sürdürün.''',
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
                              builder: (context) => Burpees(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Colors.grey[100],
                                Colors.grey[800]
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
                            "Sonraki egzersiz ; Burpees",
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
