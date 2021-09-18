import 'package:flutter/material.dart';
import 'package:i_am_poor/freelancer_welcome.dart';

class LogIn extends StatelessWidget{
  @override
   Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Freelancer App",
      theme: ThemeData(
    // Define the default brightness and colors.
       brightness: Brightness.light,
       primaryColor: Colors.purple, 
       accentColor: Colors.white,
        ),
      home: Scaffold(
              body: Container(
                 child: Column(
                  children: <Widget>[
               SizedBox(
                 height: 30,
               ),
               CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: (1/4) * size.width,
                  child: Image( 
               image: AssetImage("images/TempLogo.png")
                  ),),
                  SizedBox(
               height: 10,
                  ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  
                   width: size.width,
                   //height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: InputBorder.none,
                  borderRadius: BorderRadius.all(Radius.circular(22))
                ),                       
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        Text("Email",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          //fontWeight: FontWeight.w100,
                        )),
                        
                        Row(
                          children: [
                            Icon(Icons.email,
                       color: Colors.grey,),
                       SizedBox(width: 5),
                            Container(
                              width: 200,
                                 child: TextField(
                                  decoration: InputDecoration.collapsed(
                                  hintText: "happyPlaces@gmail.com",
                                   border: InputBorder.none,
                                  ),
                                  
                                ),
                            ),
                          ],
                        )
                        
                      ],                      
                    ),
                  ),
                  ),),
                  SizedBox(
               height:5,
                  ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  
                   width: size.width,
                   //height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    //border: InputBorder.none,
                  borderRadius: BorderRadius.all(Radius.circular(22))
                ),                       
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Password",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          //fontWeight: FontWeight.w100,
                        )),
                        
                        Row(
                          children: [
                            Icon(Icons.lock,
                        color: Colors.grey,),
                        SizedBox(width: 5),
                            Container(
                              width: 200,
                              child: TextField(
                                decoration: InputDecoration.collapsed(
                                 hintText: "..........",
                                 border: InputBorder.none,
                                ),
                                
                                ),
                            ),
                          ],
                        ),
                       
                      ],                      
                    ),
                  ),
                ),
              ),
                  SizedBox(
               height:5,
                  ),
                  Padding(
               padding: const EdgeInsets.all(15),
               child: Material(  //Wrap with Material
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                   elevation: 18.0,
                  color: Color(0xFF7900c8),
                  clipBehavior: Clip.antiAlias, // Add This
                   child: MaterialButton(
                     minWidth: 300.0,
                      height: 35,
                       //color: Color(0xFF7900c8),
                       child: new Text('Log in',
                         style: new TextStyle(
                          fontSize: 14.0, 
                         color: Colors.white,
                         fontWeight: FontWeight.bold),
                          ),
                   onPressed: () {
                    Navigator.pushReplacement(context,
                                        MaterialPageRoute( builder:
                                                          (context) =>
                                                          Welcome()
                                                         )
                                       );
                 },
              ),
                ),
                  ),
                  Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Sign Up",
                   style: TextStyle(color: Colors.purple),),
                   Text("Forgot Password",
                   style: TextStyle(color: Colors.purple),),
                 ],
               ),
                  ),
                  Text("Log in With"),
                  SizedBox(height: 5),
                  Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Center(child: Row(
                   children: [
                         //color: Colors.purple,
                     Container(
                       color: Colors.white,
                       width: 40,
                       height: 40,
                       // decoration: BoxDecoration(
                       //   borderRadius: BorderRadius.all(Radius.circular(20))
                       // ),
                       child: Icon(Icons.games,
                            color: Colors.purple,),
                     ),
                     SizedBox(
                       width: 5,
                     ),
                     Container(
                       color: Colors.white,
                       width: 40,
                       height: 40,
                       // decoration: BoxDecoration(
                       //   borderRadius: BorderRadius.all(Radius.circular(20))
                       // ),
                       child: Icon(Icons.games,
                            color: Colors.purple,),
                     ),
                     
                   ],
                 )),
                 
               ]              
                  ),
              
                  ]

                ),
                  ),
      ),
    );
 }
} 