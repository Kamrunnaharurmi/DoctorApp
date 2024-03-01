import 'package:flutter/material.dart';
import 'home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class report extends StatefulWidget {
  const report({Key? key}) : super(key: key);
  @override
  State<report> createState() => _reportState();
}

class _reportState extends State<report> {
  TextEditingController reportController = TextEditingController();
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
          title: Text('Report Problems',
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
                          height: 40
                      ),
                    Text(
                      'Please let us know What problems are you facing?',
                      style: TextStyle(fontSize: 17, color: Colors.blue,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: reportController,
                      style: TextStyle(fontSize: 15),
                      maxLines: 100,
                      minLines: 5,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                        hintText: 'Write your problems here',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                      var report = reportController.text.trim();
                        FirebaseFirestore.instance
                            .collection('users')
                            .doc()
                            .set({
                          "problems": report,
                        }).then((_) {
                          print("Report stored in Firestore successfully");
                          // Navigate to the next screen
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home(),
                            ),
                          );
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: (Text("Submit",
                          style: TextStyle(fontSize: 15, color: Colors.white))),
                    ),
                  ]))),
        ),
    ),
    );
  }
}
