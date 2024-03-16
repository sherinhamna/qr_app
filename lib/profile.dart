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
            SizedBox(height: 100,),

            Text("hamna",style: TextStyle(color:Colors.white ,fontSize: 28),
            ),

            SizedBox(height: 90,),
            Container(color: Colors.white
              ,
              child: Row(
                children: [
                Icon(Icons.phone,size: 40
                ),
                SizedBox(width: 50,),
                Text("9876543210",style: TextStyle(color: Colors.black,fontSize: 28 ),),
              ],
              ),
            ),


            SizedBox(height: 90),
            Container(color: Colors.white,
              child: Row(
                children: [
                Icon
                  (Icons.email,size: 20
                ),
                SizedBox(width: 50,),
                Text("hamnasherin098@gmail.com",style: TextStyle(color: Colors.black,fontSize: 28 ),),
              ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
