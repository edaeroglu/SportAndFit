import 'package:flutter/material.dart';

class KolEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text('Kol Egzersizleri'),
        ),
        body: SafeArea(
          child: RawScrollbar(
            thumbColor: Colors.grey[700],
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 160,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/ters plank.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''Ters 
(Reverse) Plank''',
                          style: TextStyle(color: Colors.black87, fontSize: 23),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 160,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/şınav.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Şınav (Push Up)",
                          style: TextStyle(color: Colors.black87, fontSize: 23),
                        ),
                      )
                    ],
                  ),
                  Row(
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
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''Arka Kol 
(Triceps)''',
                          style: TextStyle(color: Colors.black87, fontSize: 23),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 160,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/biceps.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Ön Kol (Biceps)",
                          style: TextStyle(color: Colors.black87, fontSize: 23),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        height: 160,
                        margin: EdgeInsets.only(top: 20, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/yengeç yürüyüşü.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''Yengeç Yürüyüşü 
(Crab Walk)''',
                          style: TextStyle(color: Colors.black87, fontSize: 21),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
