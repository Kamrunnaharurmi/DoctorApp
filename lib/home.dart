import 'package:flutter/material.dart';
import 'package:medical/about.dart';
import 'package:medical/hospitals.dart';
import 'life.dart';
import 'list.dart';
import 'log.dart';
import 'report.dart';
import 'package:firebase_auth/firebase_auth.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);
  @override
  State<home> createState() => homeState();

}
class homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/home.jpg"),
            fit: BoxFit.fill),
      ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: Drawer(
           backgroundColor: Colors.blue,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Image.asset(
                        'images/start.jpg',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                  leading: Icon(Icons.home,color: Colors.white,size: 20),
                  title: Text("Home",style: TextStyle(fontSize: 15, color: Colors.white),),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.supervised_user_circle,color: Colors.white,size: 20),
                  title: Text("About",style: TextStyle(fontSize: 15, color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  about(),
                      ),
                    );
                  },
                ),

                ListTile(
                  leading: Icon(Icons.share,color: Colors.white,size: 20),
                  title: Text("Share",style: TextStyle(fontSize: 15, color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  home(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.report,color: Colors.white,size: 20),
                  title: Text("Report",style: TextStyle(fontSize: 15, color: Colors.white),),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  report(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout,color: Colors.white,size: 20),
                  title: Text("LogOut",style: TextStyle(fontSize: 15, color: Colors.white),),
                  onTap: () {
                   FirebaseAuth.instance.signOut().then((value) {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) => log(),
                       ),
                     );
                   }
                   );
                  },
                ),
              ],
            ),
          ),

            appBar: AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 27, // Changing Drawer Icon Size
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  );
                },
              ),
              backgroundColor: Colors.blue,
              centerTitle: true,
              title: Text('MEDILIFE',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),

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
                     height: 40
                   ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:[
                             Padding(
                               padding: EdgeInsets.only(left: 5, right: 5),
                               child: Image.asset(
                                 'images/doctor.png',
                                 width: 100,
                                 height: 100,
                               ),
                             ),
                         ElevatedButton.icon(
                           onPressed: () {
                             Navigator.pushReplacement(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => list()));
                           },
                           style: ButtonStyle(
                               backgroundColor:
                               MaterialStateProperty.all<Color>(Colors.white),
                               foregroundColor:
                               MaterialStateProperty.all<Color>(Colors.blue),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30)))),
                           icon: Icon( // <-- Icon
                               Icons.person, color: Colors.blue,size: 20),
                           label: Text(textAlign: TextAlign.center,
                             '\nRenowned  \nSpecialists  \n',
                             style: TextStyle(fontSize: 13),
                           ),
                         ),
                         ]
                         ),
                         SizedBox(
                           width:10,
                         ),
                         Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                               Padding(
                                 padding: EdgeInsets.only(left: 5, right: 5),
                                 child: Image.asset(
                                   'images/hospital.png',
                                   width: 100,
                                   height: 100,
                                 ),
                               ),
                         ElevatedButton.icon(
                           onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => hospital()));
                           },
                           style: ButtonStyle(
                               backgroundColor:
                               MaterialStateProperty.all<Color>(Colors.white),
                               foregroundColor:
                               MaterialStateProperty.all<Color>(Colors.blue),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30)))),
                           icon: Icon( // <-- Icon
                               Icons.local_hospital,color: Colors.blue,size: 20),

                           label: Text(textAlign: TextAlign.center,
                             '\nRenowned  \nHospitals  \n',
                             style: TextStyle(fontSize: 13),
                           ),
                         ),
                         ]
                     ),
                       ],
                     ),
                     SizedBox(
                       height: 50,
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children:[
                             Padding(
                               padding: EdgeInsets.only(left: 5, right: 5),
                               child: Image.asset(
                                 'images/life.jpg',
                                 width: 100,
                                 height: 100,
                               ),
                             ),
                         ElevatedButton.icon(
                           onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => life()));
                           },
                           style: ButtonStyle(
                               backgroundColor:
                               MaterialStateProperty.all<Color>(Colors.white),
                               foregroundColor:
                               MaterialStateProperty.all<Color>(Colors.blue),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30)))),
                           icon: Icon( // <-- Icon
                               Icons.list_alt_rounded,color: Colors.blue,size: 20),
                           label: Text(textAlign: TextAlign.center,
                             '\nHealthy     \nLifestyle     \n',
                             style: TextStyle(fontSize: 13),
                           ),
                         ),
                         ],
                     ),
                         SizedBox(
                           width:10,
                         ),

                         Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                               Padding(
                                 padding: EdgeInsets.only(left: 5, right: 5),
                                 child: Image.asset(
                                   'images/health.png',
                                   width: 100,
                                   height: 100,
                                 ),
                               ),
                         ElevatedButton.icon(
                           onPressed: () {
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => home()));
                           },
                           style: ButtonStyle(
                               backgroundColor:
                               MaterialStateProperty.all<Color>(Colors.white),
                               foregroundColor:
                               MaterialStateProperty.all<Color>(Colors.blue),
                               shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                   RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(30)))),
                           icon: Icon( // <-- Icon
                               Icons.list_alt_rounded,color: Colors.blue,size: 20),
                           label: Text(textAlign: TextAlign.center,
                             '\nHealth       \nRecords       \n',
                             style: TextStyle(fontSize: 13),
                           ),
                         ),
                         ]
                     ),
                       ],
                     ),
                     SizedBox(
                       height: 30,
                     ),
                ],
              )
              ),
    ),
    ),
          ),
        );
  }
}