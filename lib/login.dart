import 'package:agro/password.dart';
import 'package:agro/photoattendace.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LOGIIN extends StatefulWidget {
  const LOGIIN({super.key});

  @override
  State<LOGIIN> createState() => _LOGIINState();
}

class _LOGIINState extends State<LOGIIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              color: Colors.white,width: 360,height: 830,
              child: Image.asset("images/Rectangle 164.png",fit: BoxFit.cover,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 90,left: 100),
              child: Image.asset("images/WhatsApp Image 2024-02-12 at 9.13 3.png",width: 150,height: 150,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270,left: 30),
              child: Column(
                children: [
                  Text("Username",style: TextStyle(fontSize: 16,color: Colors.black87),),
                  SizedBox(height: 80,),
                  Text("Password",style: TextStyle(fontSize: 16,color: Colors.black87),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300,left: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: 295,height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
                        ),
                        hintText: " Enter your username",hintStyle: TextStyle(fontSize: 15)
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  SizedBox(
                    width: 290,height: 50,
                    child: TextField(
                      
                      decoration: InputDecoration(
                        
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                        ),
                        hintText: " Enter your password",
                        hintStyle: TextStyle(fontSize: 15)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 455,left: 192),
              child: InkWell(
                onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PASSWORD()),
  );
},
                child: Text("Forget your password?",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 505,left: 30),
              child: SizedBox(width: 280,height: 45,
                child: ElevatedButton(

                  onPressed: () {
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => PHOTOATTENDENCE()),
  );
                  }, 
                child: Text("LOG IN",style: TextStyle(color: Colors.white,fontSize: 17),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 114, 200, 117),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}