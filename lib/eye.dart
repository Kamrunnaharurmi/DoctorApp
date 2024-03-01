import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'list.dart';

class eye extends StatefulWidget {
  const eye({super.key});

  @override
  State<eye> createState() => eyeState();
}

class eyeState extends State<eye> {
  launchUrl(String url) async {
    try {
      await launch(url);
    } catch (e) {
      throw "Error launching URL: $e";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/home3.jpg"),
            fit: BoxFit.cover),
      ),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: Text('OPTHALMOLOGISTS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),
              leading: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => list()));
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
                        height: 20
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
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/male.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "1. Prof. Dr. Sheikh M. A. Mannaf"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS (EYE), Fellow in Glaucoma (USA)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15,color: Colors.black),
                                "Hospital Name: Harun Eye Foundation Hospital, Dhanmondi\nAddress:  House # 12/A, Road # 05, Mirpur Main Road, Dhanmondi, Dhaka\nVisiting Hour: 5pm to 9pm (Sat to Thu) & 10am to 12pm (Sat, Mon & Wed)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+88029613930');
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.blue),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)))),
                                    icon: Icon( // <-- Icon
                                        Icons.call,color: Colors.blue,size: 20),

                                    label: Text(textAlign: TextAlign.center,
                                      'Appointment: +88029613930',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/male.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "2. Dr. Bipul Kumer Sarker"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FRCS (UK), MRCS (UK), FICO (UK), FCPS"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Retina Glaucoma Center & Superspecialty Eye Hospital\nAddress: 57/E Panthapath, East Side of BRB Hospital, Dhaka 1215.\nVisiting Hour: 5pm to 8pm (Sat, Mon & Wed)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8801733747575');
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.blue),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)))),
                                    icon: Icon( // <-- Icon
                                        Icons.call,color: Colors.blue,size: 20),

                                    label: Text(textAlign: TextAlign.center,
                                      'Appointment: +8801733747575',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                           ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/male.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "3. Prof. Dr. Sarwar Alam"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, DO, FCPS (EYE)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Anwer Khan Modern Medical College Hospital.\nAddress: House # 17, Road # 08, Dhanmondi R/A, Dhaka – 1205.\nVisiting Hour: 9am to 12pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8801721558220');
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.blue),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)))),
                                    icon: Icon( // <-- Icon
                                        Icons.call,color: Colors.blue,size: 20),

                                    label: Text(textAlign: TextAlign.center,
                                      'Appointment: +8801721558220',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/male.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "4. Dr. Muhammad Moniruzzaman"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS, FACS, FSIO"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Vision Eye Hospital, Dhaka\nAddress: 229 Green Road, Dhanmondi, Dhaka – 1205.\nVisiting Hour:  8am to 10pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8801988815702');
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.blue),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)))),
                                    icon: Icon( // <-- Icon
                                        Icons.call,color: Colors.blue,size: 20),

                                    label: Text(textAlign: TextAlign.center,
                                      'Appointment: +8801988815702',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/male.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "5. Dr. AKM Nazmus Saquib"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, PhD, D-Ophth (DU), FRSH (London), MAMS (Vienna)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black),
                                "Hospital Name: Ibn Sina Diagnostic Center, Dhanmondi\nAddress: House # 48, Road # 9/A, Dhanmondi, Dhaka - 1209\nVisiting Hour: 10am to 12pm & 5pm to 8pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8809610010615');
                                    },
                                    style: ButtonStyle(
                                        backgroundColor:
                                        MaterialStateProperty.all<Color>(Colors.white),
                                        foregroundColor:
                                        MaterialStateProperty.all<Color>(Colors.blue),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)))),
                                    icon: Icon( // <-- Icon
                                        Icons.call,color: Colors.blue,size: 20),

                                    label: Text(textAlign: TextAlign.center,
                                      'Appointment: +8809610010615',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 30,
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