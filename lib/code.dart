import 'package:flutter/material.dart';
class Qr extends StatefulWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
        child:Column(
          children: [
            SizedBox(height: 150),

            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person,size: 50,),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){}, child: Text('scan',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
                fixedSize: Size(100, 40),
                side: BorderSide(width: 3.0,color: Colors.white),
              )
            ),
          ],
        ),
        ),
      ),
    );
  }
}
