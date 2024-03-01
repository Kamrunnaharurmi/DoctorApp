import 'package:flutter/material.dart';
import 'package:medical/reg.dart';
import 'home.dart';
import 'page1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'resetpass.dart';


class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => logState();
}

class logState extends State<log> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


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
              title: Text('Login',
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
                      height: 500,
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
                              cursorColor: Colors.blue,
                              style: TextStyle(color: Colors.blue),
                              controller: emailController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  backgroundColor: Colors.white,
                                ),
                                labelText: "Email",
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: "Enter Your Email",
                                prefixIcon: Icon(Icons.email, color: Colors.blue, size: 15),
                                // ... Your InputDecoration properties ...
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Email";
                                }
                                bool emailValid = RegExp(
                                    r'(?=.*[a-z])[0-9._%+-]+@(gmail|outlook|yahoo)\.com$'
                                ).hasMatch(value);
                                if (!emailValid) {
                                  return "Enter Valid Email";
                                } else {
                                  return null; // Return null on success
                                }
                              },
                            ),

                            SizedBox(
                              height:5,
                            ),
                            // ... password ...
                            TextFormField(
                              cursorColor: Colors.blue,
                              style: TextStyle(color: Colors.blue),
                              obscureText: _isHidden,
                              controller: passwordController, // Add this line
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                labelStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  backgroundColor: Colors.white,
                                ),
                                labelText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                ),
                                hintText: 'Enter Password',
                                prefixIcon: Icon(Icons.lock, color: Colors.blue, size: 20),
                                suffix: InkWell(
                                  onTap: _togglePasswordView,
                                  child: Icon(
                                    !_isHidden ? Icons.visibility : Icons.visibility_off,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                ),
                                // ... Your InputDecoration properties ...
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Enter Password";
                                }
                                bool passwordValid = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'
                                ).hasMatch(value);
                                if (!passwordValid) {
                                  return "Password should contain 1 upper case, 1 lower case, 1 digit, 1 special character, minimum 8 length!";
                                } else {
                                  return null; // Return null on success
                                }
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => reset(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Pasword?',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      FirebaseAuth.instance.signInWithEmailAndPassword(
                                          email: emailController.text,
                                          password: passwordController.text
                                      ).then((value) {
                                        print("User signed in successfully");
                                        emailController.clear();
                                        passwordController.clear();
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => home(),
                                          ),
                                        );
                                      }).catchError((error) {
                                        print("Error signing in: $error");
                                        // Handle error here, such as displaying a snackbar with the error message
                                      });
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                  ),
                                  child: Text(
                                    'Sign In',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't Have Any Account?",
                                    style: TextStyle(fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => reg(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Please Sign Up',
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




