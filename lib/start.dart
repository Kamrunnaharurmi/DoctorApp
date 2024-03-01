import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page1.dart';

class start extends StatefulWidget {
  const start({super.key});

  @override
  State<start> createState() => startState();
}

class startState extends State<start> {
  @override

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/start.jpg"),
            fit: BoxFit.cover),
      ),

      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Image.asset(
                          'images/mlogo.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('MEDILIFE',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,color: Colors.blue)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('A Way To Reach The Medics',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,color: Colors.blue)),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => page1()));},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5))),
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                            "--^- Start --^-",textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17,fontStyle: FontStyle.italic,color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.0),
                        child: Image.asset(
                          'images/bits.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
      ),
    ),
    );
  }
}