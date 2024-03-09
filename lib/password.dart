import 'package:agro/menu.dart';
import 'package:flutter/material.dart';

class PASSWORD extends StatefulWidget {
  const PASSWORD({super.key});

  @override
  State<PASSWORD> createState() => _PASSWORDState();
}

class _PASSWORDState extends State<PASSWORD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 186, 221, 250),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 20),
            child: Row(
              children: [
                Text("PASSWORD",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 170,),
                Image.asset("images/Ellipse 10.png"),
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 125,left: 30),
            child: Text("Newpassword",style: TextStyle(fontSize: 16,color: Colors.black87),),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 230,left: 30),
            child: Text("Re-enter your new password",style: TextStyle(fontSize: 16,color: Colors.black87),),
          ),
            Padding(
              padding: const EdgeInsets.only(top: 157,left: 30),
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
                        hintText: " Enter your new password",hintStyle: TextStyle(fontSize: 15)
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
                        hintText: " Re-enter your new password",
                        hintStyle: TextStyle(fontSize: 15)
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 350,left: 30),
              child: SizedBox(width: 290,
                child: ElevatedButton(
                
                      onPressed: () {
                        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ATTENDANCE()),
                  );
                      }, 
                    child: Text("SAVE CHANGES",style: TextStyle(color: Colors.white,fontSize: 17),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 114, 200, 117),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    ),
              ),
            ),
        ],
      ),
    );
  }
}