import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/giris-ekrani.dart';

class BilgiEkrani extends StatefulWidget {
  @override
  _BilgiEkraniState createState() => _BilgiEkraniState();
}

class _BilgiEkraniState extends State<BilgiEkrani> {
  String ad;
  double yas = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Bilgilerinizi giriniz:'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 70),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-Posta',
                  ),
                  onChanged: (text) {
                    setState(() {});
                  },
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Adınız',
                  ),
                  onChanged: (text) {
                    setState(() {
                      ad = text;
                    });
                  },
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Soyadınız',
                  ),
                  onChanged: (text) {
                    setState(() {});
                  },
                )),
            SizedBox(
              height: 15,
            ),
            Text('Yaşınız?',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Text(
              '${yas.round()}',
              style: TextStyle(
                  color: Colors.purpleAccent[100],
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Slider(
                activeColor: Colors.purple[300],
                min: 0,
                max: 60,
                value: yas,
                onChanged: (double newValue) {
                  setState(() {
                    yas = newValue;
                  });
                }),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                height: 50.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GirisEkrani(),
                          settings: RouteSettings(
                            arguments: ad,
                          ),
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
                            Colors.purple[300]
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
                        "Devam",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                alignment: Alignment.bottomCenter,
                height: 40,
                width: 150,
                color: Colors.purple[400],
                child: TextButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.black12)),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: new Text("Hakkında"),
                          content: new Text(
                              "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301043 numaralı Eda Eroğlu tarafından 30 Nisan 2021 günü yapılmıştır."),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Hakkında',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
