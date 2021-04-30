import 'package:flutter/material.dart';

class KarinEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text('Karın Egzersizleri'),
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
                              image: AssetImage('assets/images/plank.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Plank",
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
                              image: AssetImage('assets/images/mekik.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Mekik",
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
                              image:
                                  AssetImage('assets/images/flutter kicks.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Flutter Kicks",
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
                                  'assets/images/mountain climbers.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''Mountain
Climbers''',
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
                              image: AssetImage('assets/images/knee in.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Knee in",
                          style: TextStyle(color: Colors.black87, fontSize: 21),
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
                                  'assets/images/bicycle crunch.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Bicycle Crunch",
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
