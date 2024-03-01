import 'package:flutter/material.dart';
import 'home.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => aboutState();
}

class aboutState extends State<about> {
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
            appBar: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: Text('About App',
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
                        height: 30
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20,),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                                "MEDILIFE\n"),

                            Text(
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                                "This App is basically a mobile application developed using the Flutter framework, allows users to schedule, manage, and track their medical appointments with healthcare providers.It typically offers features such as appointment booking, doctor search, calendar integration and sometimes telemedicine services. These apps aim to enhance the efficiency and convenience of healthcare interactions for both patients and doctors. \n"),
                          ]
                            ),
                    ),
                  ]
                      ),
                    ),
            )
                ),
              ),
            );
  }
}