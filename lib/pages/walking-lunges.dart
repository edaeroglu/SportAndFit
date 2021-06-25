import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/jump-squats.dart';

class WalkingLunges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('Walking Lunges'),
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
                        image: AssetImage('assets/images/walking lunge.jpg'),
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
                  '''-Başınız dik karşıya bakar pozisyonda olmalı, karın kaslarınızı sıkarak aktif hale getirin. 
-Bir ayağınız ilerideyken diğeri parmak ucu pozisyonunda geride tutun.
-Bir adiminizi one atarak arka dizinizi yavaşça aşağı indirin .
-Arkadaki diziniz kesinlikle yere değmemeli ve öndeki diziniz parmak ucunu geçmemeli. 
-Ayaklarınız paralel bir şekilde karşıya bakmalı. 
-Kuvveti öndeki ayağın topuğundan uygulamalısınız.''',
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
                              builder: (context) => JumpSquats(),
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
                            "Sonraki egzersiz ; Jump Squats",
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
