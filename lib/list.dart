import 'package:flutter/material.dart';
import 'package:medical/cardio.dart';
import 'dent.dart';
import 'eye.dart';
import 'gynec.dart';
import 'home.dart';
import 'kidney.dart';
import 'psych.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => listState();
}

class listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/home1.jpg"),
            fit: BoxFit.fill),
      ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: Text('Categories',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),
              leading: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => home()));
                },
                icon:Icon(Icons.arrow_back_outlined,color: Colors.white),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(left: 0, right: 15),
                  child: Image.asset(
                    'images/mlogo.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ],
            ),

            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 2, right: 2),
                child: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(blurRadius: 30.0)
                        ],
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.elliptical(
                                MediaQuery.of(context).size.width, 100.0)),
                      ),
                    ),
                    SizedBox(
                        height: 80
                    ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => cardio()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: Image.asset('images/cardio.jpg',
                        width: 65,
                        height: 65,
                      ),

                    ),
                    Text("Cardiologist",
                        style: TextStyle(
                            fontSize: 15
                            ,color: Colors.white,fontWeight: FontWeight.bold)),
                  ], ),
                      SizedBox(
                  width:10,
                ),
                     Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>dent()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: Image.asset('images/dental.jpg',
                        width: 65,
                        height: 65,
                      ),

                    ),
                    Text("Dentists",
                        style: TextStyle(
                            fontSize: 15
                            ,color: Colors.white,fontWeight: FontWeight.bold)),
                  ],
                ),
                ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>psych()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                              child: Image.asset('images/psychology.png',
                                width: 65,
                                height: 65,
                              ),

                            ),
                            Text("Psychiatrists",
                                style: TextStyle(
                                    fontSize: 15
                                    ,color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        SizedBox(
                          width:10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => eye()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: CircleBorder(),
                            ),
                            child: Image.asset('images/eye.png',
                              width: 65,
                              height: 65,
                            ),

                          ),
                            Text("Ophthalmologist",
                                style: TextStyle(
                                    fontSize: 15
                                    ,color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => gynec()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                              child: Image.asset('images/gyne.jpg',
                                width: 65,
                                height: 65,
                              ),

                            ),
                            Text("Gynecologist",
                                style: TextStyle(
                                    fontSize: 15
                                    ,color: Colors.white,fontWeight: FontWeight.bold)),
                          ], ),
                        SizedBox(
                          width:10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>kidney()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                              ),
                              child: Image.asset('images/kedney.png',
                                width: 65,
                                height: 65,
                              ),

                            ),
                            Text("Nephrologists",
                                style: TextStyle(
                                    fontSize: 15
                                    ,color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
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