import 'package:flutter/material.dart';
import 'package:qr_app/code.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyan,
          body: Padding(
            padding: const EdgeInsets.only(right: 180,left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 100,width: 50,),
                Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 40),
                ),

                SizedBox(height: 200,width: 100),
                TextField(
                  decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'enter the email',hintStyle: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: 50,width: 60,),
                TextField(
                  decoration: InputDecoration(
                      filled: false,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'enter the pssword',hintStyle: TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: 100,width: 50,),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 26,right: 26),
                    textStyle: const TextStyle(fontSize: 28),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Qr()));
                  },
                  child: const Text('LOGIN',),
                ),


              ],
            ),
          )
      ),
    );
  }
}
