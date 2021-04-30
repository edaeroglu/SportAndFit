import 'package:flutter/material.dart';

class KalcaEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text('Kalça Egzersizleri'),
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
                              image: AssetImage('assets/images/squat.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Squat",
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
                                  AssetImage('assets/images/front lunge.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Front Lunges",
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
                              image: AssetImage('assets/images/hip bridge.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Hip Bridge",
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
                                  'assets/images/one leg hip bridge.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''One Leg 
Hip Bridge''',
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
                                  AssetImage('assets/images/donkey kicks.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Donkey Kicks",
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
