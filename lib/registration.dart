import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qr_app/code.dart';
import 'package:http/http.dart' as http;
import 'package:qr_app/login.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);
  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  TextEditingController name = TextEditingController();
  TextEditingController rollno = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void Register() async {
    print(name.text);
    print(rollno.text);
    print(email.text);
    print(password.text);
    Uri uri = Uri.parse('https://scnner-web.onrender.com/api/register');
    var response = await http.post(uri, headers: <String, String>{
      'Content-type': 'application/json;charset=UTF-8',
    },
        body: jsonEncode({
          'name': name.text,
          'rollno': rollno.text,
          'email': email.text,
          'password': password.text,
        }));
    print(response.statusCode);
    print(response.body);
    var data = jsonDecode(response.body);
    print(data["message"]);
    if (response.statusCode == 200) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Login(),));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("data['message']")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30, width: 150,),
            Text("REGISTRATION",
              style: TextStyle(color: Colors.white, fontSize: 28),),

            SizedBox(height: 50, width: 100),
            TextField(
              controller: name,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50, width: 100),
            TextField(
              controller: rollno,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your roll no',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50, width: 100),
            TextField(
              controller: email,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your Email',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50, width: 100),
            TextField(
              controller: password,
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 100, width: 50,),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.only(left: 26, right: 26),
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: () {
                setState(() {
                  Register();
                });
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Qr()));
              },
              child: const Text('REGISTER'),
            ),

          ],
        ),
      ),
    );
  }
}