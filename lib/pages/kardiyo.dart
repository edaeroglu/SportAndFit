import 'package:flutter/material.dart';

class KardiyoEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.cyan[800],
          title: Text('Kardiyo Egzersizleri'),
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
                              image: AssetImage('assets/images/ip atlama.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "İp Atlama",
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
                                  AssetImage('assets/images/halat idmanı.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Halat İdmanı",
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
                                  AssetImage('assets/images/high knee run.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "High Knee Run",
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
                              image: AssetImage('assets/images/butt kick.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Butt Kick",
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
                              image: AssetImage('assets/images/burpees.jpg'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Burpees",
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
