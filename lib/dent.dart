import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'list.dart';

class dent extends StatefulWidget {
  const dent({super.key});

  @override
  State<dent> createState() => dentState();
}

class dentState extends State<dent> {
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
              title: Text('DENTISTS',
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
                                "1. Prof. Dr. Nasir Uddin"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Facial Plastic & Reconstructive Surgery (Canada)."),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15,color: Colors.black),
                                "Chamber: Avenue Dental Care\nAddress:House 3A, Satmosjid Road, Lalmatia, Dhaka - 1205, Bangladesh.\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('01611606095');
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
                                      'Appointment: 01611-606095',
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
                                "2. Dr. Uttom Kumar Shet"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MSD ( South Kore), Ph.D. (South Korea)."),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Chamber: The Dental Excellence\nAddress: Rabindra Sarani, Sector # 3, Uttara, Dhaka.\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('01960932838');
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
                                      'Appointment: 01960-932838',
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
                                "3. Dr. Mohammad Ahtashamul Haque"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "MSS(Health Economics, DU). PGD( Japan Studies, DU)."),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Chamber: Shamim Dental Surgery\nAddress: 78/3, Chankharpool Moor, Nazimuddin Road, Dhaka 1100\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('01819824102');
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
                                      'Appointment: 01819-824102',
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
                                "4. Dr. Shamim Reza"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Cosmetic dentistry, Specially Cosmetic filling"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black
                                ),
                                "Chamber: Perfect 32 Dental and Orthodontic Center\nAddress: House No# 3, Road No#3, Dhanmondi, Dhaka-1205\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('01746017891');
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
                                      'Appointment: 01746-017891',
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
                                "5. Dr. Aslam Al Mehdi"),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "M.S. (Oral & Maxillofacial Surgery/Medicine) Korea"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 15,color: Colors.black),
                                "Chamber: Banani Specialized Hospital\nAddress: House # 116, Road # 15, Block # C, Banani, Dhaka-1213; Bangladesh.\n"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('01311129953');
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
                                      'Appointment: 01311-129953',
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