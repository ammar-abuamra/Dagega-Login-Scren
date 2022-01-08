import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_icons/flutter_icons.dart';
import 'package:untitled/config/config.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isMAle = true;
  bool isSignup = true;
  bool isRemmeber = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height:610,
                decoration: BoxDecoration(
                  color: Colors.pinkAccent,
                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topLeft:  Radius.circular(80))),
                child: Container(
                  padding: EdgeInsets.only(top: 70, left: 20,bottom: 8),
                 color: Colors.blueAccent.withOpacity(.1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Welcome To \n',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: 'Dageega ',
                                  style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ]),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(' Login to continue',
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              )),

          Positioned(
            top: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                inbut(Icons.person,'Email/Phone Number',false,true),
                SizedBox(height: 10,),
                inbut(Icons.shopping_bag, 'Password', true, false),
            SizedBox(height: 20,),
            Container(
              // margin: EdgeInsets.only(left: 10),
              height: 40,width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.black,),
            child:Center(child: Text('LOGIN',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,),)) ,),
                Container(padding: EdgeInsets.only(right: 200),
                    child: Text('Forget Password ?',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold,),)),
                SizedBox(height: 5,),
                Text('Or Singing with',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Row(


                  children: [ buildCircleAvatar(MaterialCommunityIcons.facebook),
                  buildCircleAvatar(MaterialCommunityIcons.google_plus),
                  buildCircleAvatar(Icons.phone),
                  buildCircleAvatar(Icons.mail_outline)],),
                SizedBox(height: 60,),
                Text('OR',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                SizedBox(height: 50,),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 40,width: 250,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.pinkAccent.withOpacity(.8),),
                  child:Center(child: Text('SIGNUP',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),)) ,),




              ],
            ),
          ),//text field//the background image and text



        ],
      ),
    );
  }

  Widget buildCircleAvatar(IconData icon,) => Padding(
    padding: const EdgeInsets.only(left:8.0),
    child: CircleAvatar(radius: 20,backgroundColor: Colors.grey,child: Icon(icon,color: Colors.white,size: 20,),),
  );

  Container inbut(IconData icon, String hint, bool isPassword, bool isEmail) {
    return Container(
                margin: EdgeInsets.only(right: 30,left: 15),
              height: 55,width: 330,
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.white.withOpacity(.5),),
                child: TextField(
                  obscureText: isPassword ,keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text ,
                  decoration: InputDecoration(fillColor: Colors.white,
                    hintText:hint,
                    hintStyle: TextStyle(fontSize: 16, color:Colors.white),
                    prefixIcon: Icon(icon,color: Colors.white,size: 30,),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white.withOpacity(.5),)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35),
                        borderSide: BorderSide(color: Colors.white.withOpacity(.5),)),
                   // contentPadding: EdgeInsets.all(10),
                  ),
                ),

              );
  }

  Widget BTextField(IconData icon, String hint, bool isPassword, bool isEmail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(35),
                borderSide: BorderSide(color: Colors.white)),
            contentPadding: EdgeInsets.all(10),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 16, color:Colors.white)),
      ),
    );
  }
}

TextButton buildTextButton(IconData icon, String title, Color backgroundColor) {
  return TextButton(
    onPressed: () {},
    style: TextButton.styleFrom(
        side: BorderSide(width: 1, color: Colors.grey),
        minimumSize: Size(145, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        primary: Colors.white,
        backgroundColor: backgroundColor),
    child: Row(
      children: [
        Icon(
          icon,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          title,
        )
      ],
    ),
  );
}
