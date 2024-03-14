import 'package:flutter/material.dart';
class Pro extends StatefulWidget {
  const Pro({Key? key}) : super(key: key);

  @override
  State<Pro> createState() => _ProState();
}

class _ProState extends State<Pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,width: 50,),
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person,size: 50,),
              backgroundColor: Colors.red,
            ),
            SizedBox(height: 100,width: 50,),

            Text("hamna",style: TextStyle(backgroundColor:Colors.cyan ),),

            SizedBox(height: 100,width: 50,),
            Row(
              Text("hamna",style: TextStyle(color: Colors.red,fontSize: 28 ),),

            ),


            SizedBox(height: 100,width: 50,),
            Text("hamnasherin098@gmail.com",style: TextStyle(backgroundColor:Colors.cyan ),),

          ],
        ),
      ),
    );
  }
}
