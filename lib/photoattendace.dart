import 'package:agro/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PHOTOATTENDENCE extends StatefulWidget {
  const PHOTOATTENDENCE({super.key});

  @override
  State<PHOTOATTENDENCE> createState() => _PHOTOATTENDENCEState();
}

class _PHOTOATTENDENCEState extends State<PHOTOATTENDENCE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 221, 250),
      body: Stack(
        children: [
          Stack(
            children: [
              Container(
              width: 360,height: 540,
              decoration: BoxDecoration(color:Colors.pink,borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              image: DecorationImage(image: AssetImage("images/Rectangle 168.png",),fit: BoxFit.fill),
              
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125,left: 35),
              child: Image.asset("images/Rectangle 169.png",width: 290,height: 300,),
            )
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 560,left: 140),
            child: Image.asset("images/Ellipse 12.png",width: 80,height: 80,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 560,left: 140),
            child: InkWell(
              onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ATTENDANCE()),
  );
},
              child: Image.asset("images/Ellipse 11.png",width: 80,height: 80,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 680,left: 125),
            child: Text("ATTENDANCE",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710,left: 90),
            child: Text("Capture your photo to mark\nyour today's attendence",style: TextStyle(fontWeight: FontWeight.w400),),
          )
        ],
      ),
    );
  }
}