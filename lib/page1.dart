import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/log.dart';
import 'package:medical/reg.dart';
import 'home.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => page1State();
}

class page1State extends State<page1> {
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
              padding: EdgeInsets.only(left: 5, right: 5, top: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    'images/doc.jpg',
                  ),
                  SizedBox(
                    height: 15,
                  ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          ElevatedButton.icon(
                            onPressed: () {Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => reg()));},
                            style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15))),
                              backgroundColor: Colors.blue,
                            ),
                            icon: Icon( // <-- Icon
                                Icons.app_registration,color: Colors.white,size: 20),
                            label: (
                                Text(
                                    "\nPlease Create An Account\n",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15
                                        ,color: Colors.white))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          ElevatedButton.icon(

                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => log()));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15))),
                              backgroundColor: Colors.blue,
                            ),
                            icon: Icon( // <-- Icon
                                Icons.account_circle,color: Colors.white,size: 20),
                            label: (
                                Text(
                                    "\nAlready Have An Account!\n",textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 15
                                        ,color: Colors.white))),
                          ),
                      ],
                  ),

                  SizedBox(
                    height: 20,
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