import 'package:flutter/material.dart';
import 'package:qr_app/code.dart';
class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,width: 150,),
            Text("REGISTRATION",style: TextStyle(color: Colors.white,fontSize: 28),),

            SizedBox(height: 50,width: 100),
            TextField(
              decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50,width: 100),
            TextField(
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your roll no',hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50,width: 100),
            TextField(
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your Email',hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 50,width: 100),
            TextField(
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                hintText: 'Enter your password',hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 100,width: 50,),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.only(left: 26,right: 26),
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Qr()));},
              child: const Text('LOGIN'),
            ),

          ],
        ),
      ),
    );
  }
}
