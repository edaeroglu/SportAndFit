import 'package:flutter/material.dart';

class BacakEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text('Bacak Egzersizleri'),
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
                              image:
                                  AssetImage('assets/images/goblet squats.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '''Goblet 
Squats''',
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
                                  AssetImage('assets/images/walking lunge.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Walking Lunges",
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
                                  AssetImage('assets/images/jump squats.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Jump Squats",
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
                              image: AssetImage('assets/images/bridges.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Bridges",
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
                              image: AssetImage('assets/images/leg press.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Leg Press",
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
