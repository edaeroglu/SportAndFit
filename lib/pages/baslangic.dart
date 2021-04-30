import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/bilgiler.dart';

class Baslangic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Sport & Fit'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/giriş1.jpg'),
                radius: 130.0,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Hoşgeldiniz',
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
                'Sağlıklı bir vücut için hemen başlayın!',
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
                            builder: (context) => BilgiEkrani(),
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
