import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'list.dart';

class kidney extends StatefulWidget {
  const kidney({super.key});

  @override
  State<kidney> createState() => kidneyState();
}

class kidneyState extends State<kidney> {
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
              title: Text('NEPHROLOGISTS',
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
                                "1. Prof. Dr. Md. Kamrul Islam"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS (Surgery), MS (Urology), FRCS (UK)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15,color: Colors.black),
                                "Hospital Name: Center for Kidney Disease & Urology Hospital\nAddress:  House No # 32, Road No # 03, Shyamoli, Dhaka - 1207.\nVisiting Hour:2pm to 9pm (Sat, Sun, Mon & Wed) & 2pm to 4.30pm (Tue, Thu & Fri) \n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('+8801777685821');
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
                                      'Appointment: +8801777685821',
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
                                "2. Prof. Dr. Md. Shahidul Islam Selim"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, MCPS (Medicine), MD (Nephrology), FACP, FASN (USA), FRCP (UK)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Medinova Medical Services, Dhanmondi\nAddress:  House # 71/A, Road # 5/A, Dhanmondi R/A, Dhaka.\nVisiting Hour:  7pm to 9pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10658');
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
                                      'Appointment: 10658',
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
                                "3. Prof. Dr. Shamim Ahmed"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS (Medicine), FRCP (Edin), FRCP (Glasg), FACP (USA), FWHO (Nephrology)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Popular Diagnostic Center, Dhanmondi.\nAddress:  House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205.\nVisiting Hour:  5pm to 9pm (Closed: Friday)\n"),
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
                                "4. Prof. Dr. M. Muhibur Rahman"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS (Medicine), MRCP (UK), PhD (Nephrology-UK), FISN (UK)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Hospital Name: Popular Diagnostic Center, Dhanmondi.\nAddress: House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205.\nVisiting Hour: 5pm to 10pm (Closed: Friday)\n"),
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
                                "5. Prof. Dr. Md. Habibur Rahman"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MBBS, FCPS, MSc (UK), FRCP (UK)"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black),
                                "Hospital Name: Popular Diagnostic Center, Dhanmondi\nAddress: House # 16, Road # 2, Dhanmondi R/A, Dhaka - 1205.\nVisiting Hour: 10am to 12pm and 5pm to 9pm (Closed: Friday)\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber(' +8809613787801');
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
                                      'Appointment:  +8809613787801',
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