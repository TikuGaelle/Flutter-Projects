import 'package:flutter/material.dart';
import 'package:i_am_poor/freelancer_second_login.dart';


class Welcome extends StatelessWidget{
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
                  radius: 0.20 * size.width,
                  child: Image( 
                 image: AssetImage("images/TempLogo.png")
                  ),),
                  SizedBox(
                 height:10,
                  ),
                  Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Text("Welcome to ......... hope you are as excited to start your journey here as much as we are. Create an account as",
                 style: TextStyle(color: Colors.purple,
                 fontWeight: FontWeight.bold,),),
                  ),
                  SizedBox(
                 height: 5,
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
                         child: new Text('Freelancer',
                           style: new TextStyle(
                            fontSize: 14.0, 
                           color: Colors.white,
                           fontWeight: FontWeight.bold),
                            ),
                     onPressed: () {
                       Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) =>
                                                          Second_LogIn()
                                                         )
                                       );

                   },
                ),
                ),
                  ),
                  Center(
                 child: Text("Or",
                 style: TextStyle(color: Colors.purple,
                 fontWeight: FontWeight.bold,),),
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
                         child: new Text('Employer',
                           style: new TextStyle(
                            fontSize: 14.0, 
                           color: Colors.white,
                           fontWeight: FontWeight.bold),
                            ),
                     onPressed: () {
                        Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) =>
                                                          Second_LogIn()
                                                         )
                                       );
                   },
                ),
                ),
                  ),
                  
                  ]

                ),
                  ),
      ),
    );
 }
} 