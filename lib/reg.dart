import 'package:flutter/material.dart';
import 'home.dart';
import 'log.dart';
import 'page1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class reg extends StatefulWidget {
  const reg({super.key});
  @override
  State<reg> createState() => regState();
}

class regState extends State<reg> {
  final _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> final_Formfeild = GlobalKey<FormState>();
  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  bool _isHidden2 = true;
  void _togglePasswordView2() {
    setState(() {
      _isHidden2 = !_isHidden2;
    });
  }


  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();


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
              title: Text('Registration',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.white)),
              leading: IconButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => page1()));
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
                      height: 700,
                      padding: EdgeInsets.only(left: 50,right: 50,bottom: 5),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 5
                            ),
                            TextFormField(
                              controller: nameController,
                              validator: (value) {
                                RegExp regex = RegExp(r'^[a-zA-Z]{6,20}$');
                                if (value == null || value.isEmpty) {
                                  return 'Enter Your Name';
                                }
                                if (!regex.hasMatch(value)) {
                                  return 'Enter a valid UserName';
                                }
                                return null;
                              },
                              cursorColor: Colors.blue,
                              style: TextStyle(color: Colors.blue),
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    backgroundColor: Colors.white),
                                labelText: 'Name',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: 'Enter Your Name',
                                prefixIcon: Icon(Icons.person,color: Colors.blue,size:15,),
                              ),
                            ),
                            SizedBox(height: 5),
                            //Email
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'(?=.*[a-z])[0-9._%+-]+@(gmail|outlook|yahoo)\.com$');
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter an email address';
                                }
                                if (!regex.hasMatch(value)) {
                                  return 'Please enter a valid Email';
                                }
                                return null;
                              },
                              cursorColor: Colors.blue,
                              style: const TextStyle(color: Colors.blue),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelStyle: TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    backgroundColor: Colors.white),
                                labelText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: 'Please enter a valid Email',
                                prefixIcon: Icon(Icons.email,color: Colors.blue,size:15,),
                              ),
                            ),
                            SizedBox(height: 5),

                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                RegExp regex = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter The Password';
                                }
                                if (!regex.hasMatch(value)) {
                                  return 'Password should contain 1 upper case, 1 lower case, 1 digit, 1 special character, and have a length of at least 8';
                                }
                                return null;
                              },
                              cursorColor: Colors.blue,
                              style: TextStyle(color: Colors.blue),
                              obscureText: _isHidden,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    backgroundColor: Colors.white),
                                labelText: 'Password',
                                hintStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: '1upper,1lower,1digit and & 1Special character length 8',
                                prefixIcon: const Icon(Icons.lock,color: Colors.blue,size:15,),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    !_isHidden
                                        ? Icons.visibility
                                        : Icons.visibility_off,color: Colors.blue,size:20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),

                            TextFormField(
                              controller: confirmPasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the password';
                                }
                                if (value != passwordController.text) {
                                  return 'Confirmation password does not match the entered password';
                                }
                                return null;
                              },
                              obscureText: _isHidden2,
                              cursorColor: Colors.blue,
                              style: const TextStyle(color: Colors.blue),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelStyle: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blue,
                                    backgroundColor: Colors.white),
                                labelText: 'Confirm Password',
                                hintStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: 'Enter Confirm Password',
                                prefixIcon: const Icon(Icons.lock,color: Colors.blue,size:15,),
                                suffix: InkWell(
                                  onTap: _togglePasswordView2,
                                  child: Icon(
                                    !_isHidden2
                                        ? Icons.visibility
                                        : Icons.visibility_off,color: Colors.blue,size:20,
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      FirebaseAuth.instance.createUserWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text
                                      ).then((UserCredential userCredential) {
                                        // Access the user's UID from the UserCredential object
                                        String uid = userCredential.user!.uid;
                                        print("User signed up successfully with UID: $uid");
                                        // Now you can use the UID to store user information in Firestore
                                        FirebaseFirestore.instance.collection("users")
                                            .doc(uid) // Use the user's UID as the document ID
                                            .set({
                                          'username': nameController.text,
                                          'email': emailController.text,
                                          'pass' :passwordController.text
                                          // Don't store passwords in plaintext
                                          // You don't need to store confirmPassword
                                        }).then((_) {
                                          print("User data stored in Firestore successfully");
                                          // Navigate to the next screen
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => log(),
                                            ),
                                          );
                                        }).catchError((error) {
                                          print("Error storing user data: $error");
                                          // Handle error here, such as displaying a snackbar with the error message
                                        });
                                      }).catchError((error) {
                                        print("Error signing up: $error");
                                        // Handle error here, such as displaying a snackbar with the error message
                                      });
                                    }
                                  },

                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Already Have An Account?",
                                    style: TextStyle(fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => log(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Please Login',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/home3.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    SizedBox(
                      height: 40,
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


