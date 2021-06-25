import 'package:flutter/material.dart';
import 'package:sport_and_fit_app/pages/butt-kick.dart';
import 'package:vector_math/vector_math_64.dart';

class HighKneeRun extends StatefulWidget {
  @override
  _HighKneeRunState createState() => _HighKneeRunState();
}

class _HighKneeRunState extends State<HighKneeRun>
    with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _animationController;
  @override
  void initState() {
    super.initState();
    _animationController = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 500));
    _animation = Tween(begin: 1.0, end: 3.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xFF, 0xE0, 0xE0, 0xE0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0xFF, 0x0, 0x83, 0x8F),
        title: Text('High Knee Run'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onDoubleTap: () {
                    if (_animationController.isCompleted) {
                      _animationController.reverse();
                    } else {
                      _animationController.forward();
                    }
                  },
                  child: Transform(
                    alignment: FractionalOffset.center,
                    transform: Matrix4.diagonal3(Vector3(
                        _animation.value, _animation.value, _animation.value)),
                    child: Container(
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
                    color: Color.fromARGB(0xFF, 0x0, 0x60, 0x64),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '''-Dik durun ve olabildiğince hızlı bir şekilde yerinizde koşun.
-Dizlerinizi mümkün olduğunca yükseğe getirmeye çalışın.
-Uyluklarınızdan ayak bileklerinize 90 derecelik bir açı oluşturun.
-Ellerinizi rahat, dirseklerinizi bükük ve omuzlarınızı aşağıda tutun ve kollarınızı ileri geri sallayın.''',
                  style: TextStyle(
                    fontFamily: 'Caveat',
                    fontSize: 28,
                    color: Color.fromARGB(0xFF, 0x0, 0x83, 0x8F),
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
                              builder: (context) => ButtKick(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      padding: EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(0xFF, 0xF5, 0xF5, 0xF5),
                                Color.fromARGB(0xFF, 0x42, 0x42, 0x42)
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
                            "Sonraki egzersiz ; Butt Kick",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(0xFF, 0xFF, 0xFF, 0xFF),
                                fontSize: 18),
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
