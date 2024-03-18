import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_app/code.dart';
import 'package:qr_app/profile.dart';
import 'package:qr_app/registration.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController rollno=TextEditingController();
  TextEditingController password=TextEditingController();
  Future<void>login()async{
  Uri uri=Uri.parse('https://scnner-web.onrender.com/api/login');
  var response=await http.post(uri,headers:<String, String>{'Content-type':'application/json;charset=UTF-8',},
      body:jsonEncode({
        'rollno':rollno,
        'password':password,
      }));
  var decodeData=jsonEncode(response.body);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.only(left: 26,right: 26),
                    textStyle: const TextStyle(fontSize: 28),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reg()));
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>Pro(),));

                  },
                  child: const Text('dont have an account',style: TextStyle(color: Colors.white,fontSize: 20),),
                ),



              ],
            ),
          )

    );
  }
}
