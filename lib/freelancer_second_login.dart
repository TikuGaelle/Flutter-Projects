import 'package:flutter/material.dart';
import 'package:i_am_poor/freelancer_username.dart';

class Second_LogIn extends StatelessWidget{
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
                      
                     width: 400,
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
                          
                          Text("Email",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            //fontWeight: FontWeight.w100,
                          )),
                          SizedBox(
                            height:5,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email,
                          color: Colors.grey,),
                          SizedBox(width: 5),
                              Container(
                                width: 200,
                                child: TextField(
                                  decoration: InputDecoration.collapsed(
                                   hintText: "happyplaces90@gmail.com",
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
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Password_state()
                  // Container(         
                  //    width: size.width,
                  //    //height: 60,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     //border: InputBorder.none,
                  //   borderRadius: BorderRadius.all(Radius.circular(22))
                  // ),                       
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(15.0),
                  //     child: 
                  //     Column(
                  //      crossAxisAlignment: CrossAxisAlignment.start,
                  //      // mainAxisAlignment: MainAxisAlignment.start,
                  //       children: [
                  //         Text("Password",
                  //         style: TextStyle(
                  //           fontSize: 14,
                  //           color: Colors.grey,
                  //           //fontWeight: FontWeight.w100,
                  //         )),
                  //         Row(
                  //           children: [
                  //             Icon(Icons.lock,
                  //             color: Colors.grey,),
                  //             SizedBox(width: 5),
                  //             Container(
                  //               width: 200,
                  //               child: TextField(
                  //                 decoration: InputDecoration.collapsed(
                  //                 hintText: "..........",
                  //                  border: InputBorder.none,
                  //                 ),
                                  
                  //               ),
                  //             ),
                  //           ],
                  //         ),
                  //       ],                      
                  //     ),
                  //   ),
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                  child: Text("Password should contain a minimum of 6 characters and must include atleast 1 uppercase letter or a number",
                  style: TextStyle(
                    color: Colors.grey,
                  )),
                ),
                SizedBox(
                  height: 20,
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
                         child: new Text('Next',
                           style: new TextStyle(
                            fontSize: 14.0, 
                           color: Colors.white,
                           fontWeight: FontWeight.bold),
                            ),
                     onPressed: () {
                       Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) =>
                                                          UserName()
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

class Password_state extends StatefulWidget {

  @override
  _Password_stateState createState() => _Password_stateState();
}

class _Password_stateState extends State<Password_state> {
bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
                    
                     width:size.width,
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
                              Expanded(
                                                              child: Container(
                                  width: 200,
                                  child: TextField(
                                    decoration: InputDecoration.collapsed(
                                    hintText: "..........",
                                     border: InputBorder.none,
                                    ),
                                    obscureText: _obscureText,
                                  ),
                                ),
                              ),
                              IconButton(
                                 icon: Icon(Icons.visibility),
                               onPressed: () {
                                  _toggle();
                                },
                                iconSize: 18, 
                              color: Colors.grey,), ] ),] ),),
      
    );
  }
}