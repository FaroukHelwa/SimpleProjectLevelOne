import 'package:flutter/material.dart';
import 'package:proj_1/Pages/login.dart';
import 'package:proj_1/Pages/signup.dart';
import 'package:proj_1/Pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: "/",
      routes: {
        "/":(context) => const Welcome(),
        "/login":(context) => const Login(),
        "/signup":(context) => const Signup()
      },
    );
  }
}

class SimpleProject extends StatelessWidget {
  const SimpleProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("EMAN"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 33,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.message,
              size: 22,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search,
              size: 25,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          "👉 Hello, Farouk",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
