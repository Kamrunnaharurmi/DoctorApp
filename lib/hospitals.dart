import 'package:flutter/material.dart';
import 'home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class hospital extends StatefulWidget {
  const hospital({super.key});

  @override
  State<hospital> createState() => hospitalState();
}

class hospitalState extends State<hospital> {
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
              title: Text('Hospitals',
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
                        height: 20
                    ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(100),
                         color: Colors.white,
                       ),
                      height: 550,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                       child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Padding(
                             padding: EdgeInsets.all(2),
                             child: Image.asset(
                               'images/square.jpg',
                               width: 200,
                               height: 100,
                             ),
                           ),
                           Text(
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                               ),
                               "1. Square Hospital"),
                           Text(
                               textAlign: TextAlign.start,
                               style: TextStyle(fontSize: 15),
                               "The square hospital is one of the renowned top ten private hospitals in Dhaka, Bangladesh. The square hospital ensures the best healthcare as well as clinical service with outstanding personal service. Though their treatment is expensive, people can get the best treatment plan."),
                           Text(
                               textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                               ),
                               "Contact Info"),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                             ElevatedButton.icon(
                               onPressed: () {
                                 FlutterPhoneDirectCaller.callNumber('10616');
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
                                 'HOTLINE:10616',
                                 style: TextStyle(fontSize: 13),
                               ),
                             ),
                               ]
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:[
                               ElevatedButton.icon(
                                 onPressed: () =>
                                     launchUrl("https://www.squarehospital.com/"),
                                 style: ButtonStyle(
                                     backgroundColor:
                                     MaterialStateProperty.all<Color>(Colors.white),
                                     foregroundColor:
                                     MaterialStateProperty.all<Color>(Colors.blue),
                                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                         RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)))),
                                 icon: Icon( // <-- Icon
                                     Icons.web,color: Colors.blue,size: 20),

                                 label: Text(textAlign: TextAlign.center,
                                   'Website',
                                   style: TextStyle(fontSize: 13),
                                 ),
                               ),

                               ElevatedButton.icon(
                                 onPressed: () =>
                                     launchUrl("https://www.google.com/maps/place/Square+Hospital+~+PanthaPath/@23.7528438,87.942595,8z/data=!4m10!1m2!2m1!1ssquare+hospital+dhaka+location!3m6!1s0x3755b8ae4e52eabd:0x113b1873c9a9c2c1!8m2!3d23.7528438!4d90.3815598!15sCh5zcXVhcmUgaG9zcGl0YWwgZGhha2EgbG9jYXRpb25aICIec3F1YXJlIGhvc3BpdGFsIGRoYWthIGxvY2F0aW9ukgEIaG9zcGl0YWyaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUTFOWEUyVkRkblJSQULgAQA!16s%2Fg%2F11fmgy9g_1?entry=ttu"),
                                 style: ButtonStyle(
                                     backgroundColor:
                                     MaterialStateProperty.all<Color>(Colors.white),
                                     foregroundColor:
                                     MaterialStateProperty.all<Color>(Colors.blue),
                                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                         RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(10)))),
                                 icon: Icon( // <-- Icon
                                     Icons.location_on,color: Colors.blue,size: 20),

                                 label: Text(textAlign: TextAlign.center,
                                   'Location',
                                   style: TextStyle(fontSize: 13),
                                 ),
                               ),
                             ],
                           ),
                         ]
                          ),
                     ),
                     SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 700,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/fazila.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "2.Sheikh Fazilatunnesa Mujib Memorial KPJ Specialized Hospital & Nursing College"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "It is one of the first IMS certified Hospital & Nursing College in Bangladesh founded by the Father of the Bangabandhu Sheik Mujibur Rahman Memorial Trust. SFMMKPJSH&NC is run by KPJ Healthcare Berhad, the leading private health care organization in Malaysia.KPJ presently operates a total of 26 hospitals in Malaysia and it is also operating in Australia, Thailand and Indonesia. The services are provided by a team of national and international consultants, assisted 24 hours a day by committed medical staff."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('0181000808');
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
                                      'HOTLINE:0181000808',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.sfmmkpjsh.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/Sheikh+Fazilatunnessa+Mujib+Memorial+KPJ+Specialized+Hospital+%26+Nursing+College/@23.9750612,90.2606889,17z/data=!3m1!4b1!4m6!3m5!1s0x3755e7cace41fc0d:0xbb1830b6476aa27b!8m2!3d23.9750612!4d90.2632638!16s%2Fg%2F11c0pybfwq?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 700,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/popular.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "3.Popular Diagnostic Centre Ltd"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "It is one of Bangladesh 's renowned diagnostic centers, which began it's own operations in 1983. It is one of the largest health care and diagnostic services provider in the country's private sector. It has been a pioneer in the launch of the world 's new medical instruments and emerging technologies to offer round-the-clock medical testing and consulting services.Popular Diagnostic Centre Ltd. has many branches situated in Dhanmondi, English Road, Shantinagar, Uttara, Shyamoli, Narayangonj, Savar, Mirpur, Gazipur, Badda, Chittagong, Noakhali, Rajshahi, Dinajpur, Rangpur, Kurigram, Barishal, Kushtia, Bogra Mymensingh in Bangladesh."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('09613787801');
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
                                      'HOTLINE:09613787801',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.populardiagnostic.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/Popular+Diagnostic+Centre+Ltd./@23.7395434,90.3795976,17z/data=!3m1!4b1!4m6!3m5!1s0x3755b8ca7af5f82b:0xce7d1ab6b16a027!8m2!3d23.7395434!4d90.3821725!16s%2Fg%2F1wnbwckn?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/labaid.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "4.Labaid Hospitals"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "One of the old and specialized private hospitals in our country established in 1989. The collective relation of Labaid Hospitals is to the Labaid Specialized Hospital (LSH) and the Labaid Cardiac Hospital (LCH).LCH is a well Known Cardiac hospital for cardiological treatment. It is one of the First NABH International accredited hospital in Bangladesh. Though there are many good hospitals in Bangladesh from where people get services, the service is also much very effective."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
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
                                      'HOTLINE:10606',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("http://labaidgroup.com"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/LABAID+Specialized+Hospital/@23.7421428,87.9440292,8z/data=!3m1!5s0x3755b8bae2fa9fc9:0xea89e543505dc644!4m10!1m2!2m1!1slabaid+hospital+dhaka+location!3m6!1s0x3755b8b7a02be491:0x45a9f97c4d06d4f9!8m2!3d23.7421428!4d90.382994!15sCh5sYWJhaWQgaG9zcGl0YWwgZGhha2EgbG9jYXRpb24iA4gBAZIBFHNwZWNpYWxpemVkX2hvc3BpdGFs4AEA!16s%2Fg%2F11h9y65l39?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/asgar.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "5. Asgar Ali Hospital"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "Asgar Ali Hospital is one of the best hospital in Bangladesh for the multidisciplinary tertiary care by City Group, situated at Gandaria Beside Dhupkhola, Dhaka. It is providing affordable Thoracic Surgery, Cardiac Surgery, ENT, Head and Neck Surgery, Neurosurgery, Obstetrics and Gynaecology, Oncology as well as indoor and outpatient facility. Its diagnostic facility and treatment cost also reasonable than other high quality private hospitals."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10602');
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
                                      'HOTLINE:10602',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.asgaralihospital.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/Asgar+Ali+Medical+College+%26+Hospital/@23.7077906,90.4207511,17z/data=!4m10!1m2!2m1!1sAsgar+Ali+Hospital+dhaka+location!3m6!1s0x3755b9b1a2cf9cf1:0x40c9c38899727082!8m2!3d23.7076995!4d90.4236808!15sCiFBc2dhciBBbGkgSG9zcGl0YWwgZGhha2EgbG9jYXRpb25aIyIhYXNnYXIgYWxpIGhvc3BpdGFsIGRoYWthIGxvY2F0aW9ukgEIaG9zcGl0YWyaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUnpORzl5U0ROblJSQULgAQA!16s%2Fg%2F1ptz9wmr4?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 550,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/ibn.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "6. Ibn Sina Specialized Hospital"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "It was established in July 1983. There are multiple services like- neuro, roster, liver, neurosurgery, endocrine, etc. Yet, it has started a new horizon in laparoscopic Abnormal and colorectal surgery. For its sophisticated treatment and affordable cost, patient complaints are also good.Among all the private hospitals, Apollo hospital is the largest and best private hospital in Bangladesh. Though it's expenses costly their treatment is more sophisticated and effective. Along with government hospitals, private hospitals are also providing regular and good medical care to the people."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10615');
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
                                      'HOTLINE:10615',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.ibnsinatrust.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/IBN+Sina+Specialized+Hospital/@23.7513422,90.2926353,13z/data=!4m10!1m2!2m1!1sIbn+Sina+Specialized+Hospital+dhaka+location!3m6!1s0x3755bf51e7aee4ff:0x21c88cabfebf5243!8m2!3d23.7513422!4d90.368853!15sCixJYm4gU2luYSBTcGVjaWFsaXplZCBIb3NwaXRhbCBkaGFrYSBsb2NhdGlvbiIDiAEBkgEIaG9zcGl0YWzgAQA!16s%2Fg%2F1tf2w4r4?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 500,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/united.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "7. United Hospital Limited"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "It is One of the top ten expensive private hospitals in Bangladesh. There is multiple expertise with an excellent experience. Oncology, Nephrology, gynecology, respiratory, neurosurgery, including COVID 19 special unit and COVID-directed ICU, etc."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10666');
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
                                      'HOTLINE:10666',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.uhlbd.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/United+Hospital+Limited/@23.8046453,87.9767866,8z/data=!4m10!1m2!2m1!1sUnited+Hospital+Limited+dhaka+location!3m6!1s0x3755c7abd941ed15:0xf151df4e4e9c047c!8m2!3d23.8046453!4d90.4157514!15sCiZVbml0ZWQgSG9zcGl0YWwgTGltaXRlZCBkaGFrYSBsb2NhdGlvblooIiZ1bml0ZWQgaG9zcGl0YWwgbGltaXRlZCBkaGFrYSBsb2NhdGlvbpIBEHByaXZhdGVfaG9zcGl0YWyaASRDaGREU1VoTk1HOW5TMFZKUTBGblNVUlRkM0JUUkRKblJSQULgAQA!16s%2Fg%2F11h6q4v0ch?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/harun.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "8. Harun Eye Foundation Hospital"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "Harun eye foundation hospital is the first well-furnished private eye hospital in Bangladesh that was founded in 1994. Experienced ophthalmologists and surgeons are available all the time. Nowadays eye disease is such a problem for which people are suffering more.No doubt, the eye is one of the essential organs in our body, and this hospital gives sophisticated treatment rather than other private hospitals that are serving eye treatment. They provide the first and best laser treatment in Bangladesh."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('02 9613930-34');
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
                                      'HOTLINE:02 9613930-34',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("http://www.hefhbd.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/place/Harun+Eye+Foundation+Hospital/@23.7431227,90.3801832,17z/data=!3m1!4b1!4m6!3m5!1s0x3755b8b716db3a41:0x5d1c3e5330429d3a!8m2!3d23.7431227!4d90.3827581!16s%2Fg%2F11b6zpltr4?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 600,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/birdem.jpg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "9. BIRDEM Hospital"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "BIRDEM, the Bangladesh Institute of research and rehabilitation in diabetes endocrine and metabolize disorders. Most of the people think the institute is only for diabetes patients, but it is not only for diabetes patients but also for compatible with others. Without any doubt, it is one of the best hospitals for diabetes patients in Bangladesh."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('02-9661551');
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
                                      'HOTLINE:02-9661551',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.birdembd.org/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/search/BIRDEM+Hospital+dhaka+location/@23.7353005,90.3960846,16z?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      height: 500,
                      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                      child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                'images/evercare.jpeg',
                                width: 200,
                                height: 100,
                              ),
                            ),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 22,fontWeight: FontWeight.bold,color: Colors.blue
                                ),
                                "10. Evercare Hospital"),
                            Text(
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15),
                                "Apollo hospital is known as the Evercare hospital in Bangladesh. On 12 March 2016, an autologous stem cell transplantation was held in the hospital, which was the first successful treatment in Bangladesh. Evercare hospital is one of the JCI approved multidisciplinary tertiary care hospital in Bangladesh. Only the best JEI hospital in Bangladesh."),
                            Text(
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black
                                ),
                                "Contact Info"),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  ElevatedButton.icon(
                                    onPressed: () {
                                      FlutterPhoneDirectCaller.callNumber('10678');
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
                                      'HOTLINE:10678',
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ),
                                ]
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.evercarebd.com/"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.web,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Website',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),

                                ElevatedButton.icon(
                                  onPressed: () =>
                                      launchUrl("https://www.google.com/maps/search/18%2FF,+Bir+Uttam,+Qazi+Nuruzzaman+Sarak,+West+Panthapath/@23.753018,90.3788802,17z/data=!3m1!4b1?entry=ttu"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(Colors.white),
                                      foregroundColor:
                                      MaterialStateProperty.all<Color>(Colors.blue),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10)))),
                                  icon: Icon( // <-- Icon
                                      Icons.location_on,color: Colors.blue,size: 20),

                                  label: Text(textAlign: TextAlign.center,
                                    'Location',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                    SizedBox(
                      height: 40,
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