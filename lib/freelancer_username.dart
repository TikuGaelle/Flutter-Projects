import 'package:flutter/material.dart';

class UserName extends StatelessWidget{
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
                //mainAxisAlignment: MainAxisAlignment.start,
                
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
                 height: 5,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text("Choose a username",
                          style: TextStyle(
                 color: Colors.purple,
                 fontSize: 15,
                 fontWeight: FontWeight.bold,
                          )),
                        ),
                        Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("Input a username, and take note that, once the username is choosen it can't be changed",
                    style: TextStyle(
                      color: Colors.grey,
                    )),
                ),
                      ],
                    ),
                  ),
                
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
                       // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              
                              Text("Username",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                //fontWeight: FontWeight.w100,
                              )),
                            ],
                          ),
                          TextField(
                            decoration: InputDecoration.collapsed(
                             hintText: "happyPlaces",
                             border: InputBorder.none,
                            ),
                            
                          ),
                        ],                      
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 1, 12, 1),
                  child: Text("By creating an account, you agree to our",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 2.0, 20.0, 2.0),
                  child: Row(
                    children: [
                      Text("Terms of Service",
                      style: TextStyle(
                        color: Colors.purple,
                      )),
                      SizedBox(width: 5),
                      Text("and",
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                      SizedBox(width: 5,),
                      Text("Privacy Policy",
                      style: TextStyle(
                        color: Colors.purple,
                      )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                 padding: const EdgeInsets.all(12),
                 child: Material(  //Wrap with Material
                    shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                     elevation: 18.0,
                    color: Color(0xFF7900c8),
                    clipBehavior: Clip.antiAlias, // Add This
                     child: MaterialButton(
                       minWidth: 300.0,
                        height: 35,
                         //color: Color(0xFF7900c8),
                         child: new Text('Done',
                           style: new TextStyle(
                            fontSize: 14.0, 
                           color: Colors.white,
                           fontWeight: FontWeight.bold),
                            ),
                     onPressed: () {
//                     setState(() {
//                 _isNeedHelp = true;
//                   });
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