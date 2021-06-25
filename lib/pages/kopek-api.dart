/*import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sport_and_fit_app/models/kopek.dart';

class Kopekler extends StatefulWidget {
  @override
  _KopeklerState createState() => _KopeklerState();
}

class _KopeklerState extends State<Kopekler> {
  Uri url = Uri.parse("https://dog.ceo/api/breeds/image/random");
  Kopek kopek;
  Future<Kopek> veri;

  Future<Kopek> kopekleriGetir() async {
    var response = await http.get(url);
    var decodedJson = json.decode(response.body);
    kopek = Kopek.fromJson(decodedJson);
    return kopek;
  }

  @override
  void initState() {
    super.initState();
    veri = kopekleriGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        backgroundColor: Colors.cyan[800],
        title: Text('API'),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: veri,
          builder: (context, AsyncSnapshot<Kopek> gelenKopek) {
            // ignore: missing_return
            if (gelenKopek.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (gelenKopek.connectionState == ConnectionState.done) {
              ListTile(
                leading: Icon(Icons.ac_unit),
              );
            }
          }),
    );
  }
} */
