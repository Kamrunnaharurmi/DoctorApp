import 'package:flutter/material.dart';
import 'home.dart';
import 'start.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyB553EcIW84RGYW1GDa8gYn_DNN9-tCBx4',
        appId: '1:894939170845:android:9a8d8c148ee89e47331ef4',
        messagingSenderId: '894939170845',
        projectId: 'medi-app-ee78e'
    )
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: start(),
    );
  }
}
