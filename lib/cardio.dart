import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'list.dart';

class cardio extends StatefulWidget {
  const cardio({super.key});

  @override
  State<cardio> createState() => cardioState();
}

class cardioState extends State<cardio> {
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
              title: Text('CARDIOLOGISTS',
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
                                'images/female.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "1. Dr. Nurun Nahar Fatema"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS, FRCP, FACC, FSCAI"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15,color: Colors.black),
                                "Hospital Name: Labaid Specialized Hospital, Dhanmondi\nAddress: House # 06, Road # 04, Dhanmondi, Dhaka – 1205\nVisiting Hour: 4pm to 6.30pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10606');
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
                                      'Appointment: 10606',
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
                                'images/female.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "2. Dr. Tanjima Parvin"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, D-CARD (DU), FCPS (Cardiology)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Popular Diagnostic Center, Shantinagar\nAddress: Unit # 01, House # 11, Shantinagar, Motijheel, Dhaka\nVisiting Hour: 6pm to 8pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8809613787803');
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
                                      'Appointment: +8809613787803',
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
                                "3. Professor Dr. Ashok Kumar Dutta"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS (Medicine), MD (Cardiology), FACC (USA)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Popular Diagnostic Center, Uttara\nAddress: House # 21, Road # 7, Sector # 4, Uttara, Dhaka (Unit 01)\nVisiting Hour:  7pm to 10pm (Only Saturday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8809613787805');
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
                                      'Appointment: +8809613787805',
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
                                "4. Professor Dr. M. Nazrul Islam"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS, FRCP (London), FESC, FACC (USA)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Popular Diagnostic Center, Dhanmondi\nAddress: House # 16, Road # 2, Dhanmondi R/A, Dhaka – 1205\nVisiting Hour:  3pm to 5pm (Closed: Thu & Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8809613787801');
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
                                      'Appointment: +8809613787801',
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
                                "5. Prof. Dr. Sajal Banerjee"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, MD (Cardiology), FCCP, FESC, FACC (USA)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black),
                                "Hospital Name: Popular Diagnostic Center, Shantinagar\nAddress: Unit # 01, House # 11, Shantinagar, Motijheel, Dhaka\nVisiting Hour: 6pm to 10pm (Closed: Tuesday & Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8809613787803');
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
                                      'Appointment: +8809613787803',
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