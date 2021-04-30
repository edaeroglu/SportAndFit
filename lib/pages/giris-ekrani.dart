import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/bolgeler.dart';

class GirisEkrani extends StatefulWidget {
  @override
  _GirisEkraniState createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  String seciliCinsiyet;
  double boy = 170;
  double kilo = 60;
  @override
  Widget build(BuildContext context) {
    String ad;
    ad = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text(
          'Merhaba $ad',
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.all(12.0),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/giriş2.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.yellowAccent.withOpacity(0.3)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Boyunuz?',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                      '${boy.round()}',
                      style: TextStyle(
                          color: Colors.teal[300],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        activeColor: Colors.teal,
                        min: 100,
                        max: 220,
                        value: boy,
                        onChanged: (double newValue) {
                          setState(() {
                            boy = newValue;
                          });
                        })
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.yellowAccent.withOpacity(0.3)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kilonuz?',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Text(
                      '${kilo.round()}',
                      style: TextStyle(
                          color: Colors.teal[300],
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Slider(
                        activeColor: Colors.teal,
                        min: 10,
                        max: 170,
                        value: kilo,
                        onChanged: (double newValue) {
                          setState(() {
                            kilo = newValue;
                          });
                        })
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Container(
                  width: double.infinity,
                  child: Text('Cinsiyet Seçiniz',
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyet = 'ERKEK';
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Center(
                            child: Text(
                          'Erkek',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )),
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: seciliCinsiyet == 'ERKEK'
                              ? Colors.grey
                              : Colors.teal[300],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyet = 'KADIN';
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Center(
                            child: Text('Kadın',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: seciliCinsiyet == 'KADIN'
                              ? Colors.grey
                              : Colors.teal[300],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          seciliCinsiyet = 'DIGER';
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 200,
                        child: Center(
                            child: Text('Diğer',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20))),
                        margin: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: seciliCinsiyet == 'DIGER'
                              ? Colors.grey
                              : Colors.teal[300],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
                            builder: (context) => BolgeEkrani(),
                          ));
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0)),
                    padding: EdgeInsets.all(0.0),
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[Colors.teal[200], Colors.teal[600]],
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
            ],
          ),
        ),
      ),
    );
  }
}
