import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
    debugShowCheckedModeBanner: false,
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login to app",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                margin:
                    EdgeInsets.only(top: 50, bottom: 40, left: 20, right: 20),
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: "Username",
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.deepPurpleAccent,
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20),
                color: Colors.white,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      labelText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.deepPurpleAccent,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          print("Show passwrod");
                        },
                        icon: Icon(Icons.visibility, color: Colors.blue),
                      )),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  print("LOGİN");
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.blueGrey, Colors.lightBlueAccent],
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {
                        print("Sing Up");
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ))
                ],
              ),
              TextButton(
                  onPressed: () {
                    print("Forgot Password");
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  )),
              InkWell(
                onTap: () {
                  print("Sign in with Google");
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0xFFFF8C3B), Color(0xFFFF6365)],
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight),
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage("assets/google.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in with Google",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Sign in with Facebook");
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.indigo, Colors.lightBlueAccent],
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight),
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage("assets/facebook.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in with Facebook",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print("Sign in with Apple");
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 15, right: 15, bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.black, Colors.blueGrey],
                            end: Alignment.centerLeft,
                            begin: Alignment.centerRight),
                        image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage("assets/apple.png")),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    alignment: Alignment.center,
                    child: Text(
                      "Sign in with Apple",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
