import 'package:flutter/material.dart';

class ATTENDANCE extends StatelessWidget {
  final appTitle = '';

  const ATTENDANCE({Key? key}) : super(key: key);

  @override
Widget build(BuildContext context) {
	return MaterialApp(
	title: appTitle,
	home: MyHomePage(title: appTitle,),debugShowCheckedModeBanner: false,
	); 
}
}

class MyHomePage extends StatelessWidget {
final String title;

const MyHomePage({Key? key, required this.title}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
    backgroundColor: Color.fromARGB(255, 186, 221, 250),
	appBar: AppBar(
		title: Text("ATTENDENCE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 0),
        child: Image.asset("images/Ellipse 10.png",width: 100,height: 100,),
      )
    ],
		backgroundColor: Color.fromARGB(255, 186, 221, 250),
	),
	drawer: Drawer(
    width: 240,
		child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,left: 15),
          child: Row(
            children: [
              Icon(Icons.menu,size: 30,color: Colors.black,),
              Text("  MENU",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),)
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Container(
            width: 220,height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
              color: Color.fromARGB(255, 55, 135, 57),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(Icons.calendar_month,color: Colors.white,),
                  Text("   ATTENDANCE",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 210,left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.currency_rupee_outlined),
                  Text("  EXPENSE",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.key_sharp),
                  Text("  CHANGE PASSWORD",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),)
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 760,left: 20),
          child: Row(
            children: [
              Icon(Icons.exit_to_app,color: Colors.red,size: 30,),
              Text("   LOG OUT",style: TextStyle(color: Color.fromARGB(255, 235, 106, 97),fontSize: 19,fontWeight: FontWeight.bold),)
            ],
          ),
        )
      ],
    )
	),

  body: Stack(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Image.asset("images/Calender.png"),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 320),
        child: Image.asset("images/Leave Req.png"),
      )
    ],
  ),
	);
}
}
