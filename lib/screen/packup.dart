// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// import 'package:flutter_icons/flutter_icons.dart';
// import 'package:untitled/config/config.dart';
//
// class anber extends StatefulWidget {
//   const anber({Key key}) : super(key: key);
//
//   @override
//   _anberState createState() => _anberState();
// }
//
// class _anberState extends State<anber> {
//   bool isMAle = true;
//   bool isSignup = true;
//   bool isRemmeber = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//           children: [Positioned
//           (
//           top: 200
//           ,
//           child: Container
//             (
//             padding: EdgeInsets.all(20
//             )
//             ,
//             height: 380
//             ,
//             width: MediaQuery
//                 .of(context)
//                 .
//             size
//                 .width - 40
//             ,
//             margin: EdgeInsets.symmetric(horizontal: 20
//             )
//             ,
//             decoration: BoxDecoration
//               (
//               color: Colors.white, borderRadius: BorderRadius.circular(15
//             )
//               ,
//               boxShadow: [
//                 BoxShadow
//                   (
//                     color: Colors.black.withOpacity(.3
//                     )
//                     ,
//                     blurRadius: 15
//                     ,
//                     spreadRadius: 5
//                 )
//               ]
//               ,
//             )
//             ,
//             child: Column
//               (
//               children: [
//               Row
//               (
//               mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
//               GestureDetector
//                 (
//                 onTap: () {
//                   setState(() {
//                     isSignup = false;
//                   });
//                 },
//                 child: Column
//                   (
//                   children: [
//                     Text
//                       ('login
//                     '
//                       ,
//                       style: TextStyle
//                         (
//                           fontSize: 16
//                           ,
//                           fontWeight: FontWeight.bold, color: !
//                       isSignup
//                           ?
//                       Palette.activeColor : Palette.textColor1),
//                     )
//                     ,
//                     if
//                     (
//                     !
//                     isSignup)Container
//                       (
//                       margin: EdgeInsets.only(top: 3
//                       )
//                       ,
//                       width: 55
//                       ,
//                       height: 2
//                       ,
//                       color: Colors.orange,)
//                   ]
//                   ,
//                 )
//                 ,
//               )
//               ,
//               GestureDetector
//                 (
//                 onTap: () {
//                   setState(() {
//                     isSignup = true;
//                   });
//                 },
//                 child: Column
//                   (
//                   children: [
//                     Text
//                       ('sing up'
//                       ,
//                       style: TextStyle
//                         (
//                           fontSize: 16
//                           ,
//                           fontWeight: FontWeight.bold, color: isSignup
//                           ?
//                       Palette.activeColor : Palette.textColor1),
//                     )
//                     ,
//                     if
//                     (
//                     isSignup)Container
//                       (
//                       margin: EdgeInsets.only(top: 3
//                       )
//                       ,
//                       width: 55
//                       ,
//                       height: 2
//                       ,
//                       color: Colors.orange,
//                     )
//                   ],
//                 ),
//               )
//             ],
//             ),
//             Container
//               (
//               margin: EdgeInsets.only(top: 20
//               )
//               ,
//               child: Column
//                 (
//                 children: [
//                 BTextField
//                 (
//                 MaterialCommunityIcons.account_alert_outline,
//                 'user name',
//                 false,
//                 false,
//               ),
//               BTextField
//                 (
//                 MaterialCommunityIcons.email_outline,
//                 'Email',
//                 false,
//                 true,
//               ),
//               BTextField
//                 (
//                 MaterialCommunityIcons.lock_outline,
//                 'Password',
//                 true,
//                 false,
//               ),
//               Padding
//                 (
//                 padding: const EdgeInsets.only(left: 10
//                     ,
//                     top: 10
//                 )
//                 ,
//                 child: Row
//                   (
//                   children: [
//                     GestureDetector
//                       (
//                       onTap: () {
//                         setState(() {
//                           isMAle = true;
//                         });
//                       },
//                       child: Container
//                         (
//                         height: 30
//                         ,
//                         width: 30
//                         ,
//                         margin: EdgeInsets.only(right: 8
//                         )
//                         ,
//                         decoration: BoxDecoration
//                           (
//                             color: isMAle
//                                 ?
//                             Palette.textColor2 : Colors.transparent,
//                             border: Border.all(width: 1
//                                 ,
//                                 color: isMAle
//                                     ?
//                                 Colors.transparent : Palette.textColor1),
//                             borderRadius: BorderRadius.circular(15
//                             )
//                         )
//                         ,
//                         child: Icon
//                           (
//                           MaterialCommunityIcons.account_outline, color: isMAle
//                             ?
//                         Colors.white : Palette.iconColor,)
//                         ,
//                       )
//                       ,
//                     )
//                     ,
//                     Text
//                       ('Male
//                     '
//                       ,
//                       style: TextStyle
//                         (
//                           color: Palette.textColor1),
//                     )
//                     ,
//                     SizedBox
//                       (
//                       width: 30
//                       ,
//                     )
//                     ,
//                     Row
//                       (
//                       children: [
//                         GestureDetector
//                           (
//                           onTap: () {
//                             setState(() {
//                               isMAle = false;
//                             });
//                           },
//                           child: Container
//                             (
//                             height: 30
//                             ,
//                             width: 30
//                             ,
//                             margin: EdgeInsets.only(right: 8
//                             )
//                             ,
//                             decoration: BoxDecoration
//                               (
//                                 color: isMAle
//                                     ?
//                                 Colors.transparent : Palette.textColor2,
//                                 border: Border.all(width: 1
//                                     ,
//                                     color: isMAle
//                                         ?
//                                     Palette.textColor1 : Colors.transparent),
//                                 borderRadius: BorderRadius.circular(15
//                                 )
//                             )
//                             ,
//                             child: Icon
//                               (
//                               MaterialCommunityIcons
//                                   .account_outline, color: isMAle
//                                 ?
//                             Palette.iconColor : Colors.white,)
//                             ,
//                           )
//                           ,
//                         )
//                         ,
//                         Text
//                           ('Femal
//                         '
//                           ,
//                           style: TextStyle
//                             (
//                               color: Palette.textColor1),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//               Container
//                 (
//                   width: 200
//                   ,
//                   margin: EdgeInsets.only(top: 20
//                   )
//                   ,
//                   child: RichText
//                     (
//                     textAlign: TextAlign.center, text: TextSpan
//                     (
//                       text: "
//
//                       By pressing
//                       '
//                       Submit
//                       '
//
//                       you agree
//
//                       to our
//                       "
//                       ,
//                       style: TextStyle
//                         (
//                           color: Palette.textColor2),
//                       children: [
//                   TextSpan
//                   (
// //recognizer: ,
//                   text: "
//                   term & conditions",
//                   style: TextStyle
//                   (
//                   color: Colors.orange),
//                   ),
//                   ]),
//             ),
//           )
//           ],
//         )),
//     ],
//     ),
//     ),
//     )
//     , //// the singin nada out continaer
//
//
//     Positioned
//     (
//     top: MediaQuery.of(context).
//     size.height - 100
//     ,
//     right: 0
//     ,
//     left: 0
//     ,
//     child: Column
//     (
//     children: [
//     Text
//     (
//     isSignup
//     ? "Or Signup with
//     "
//         :
//     "
//     Or Signin with
//     "
//     )
//     ,
//     Container
//     (
//     margin: EdgeInsets.only(right: 20
//     ,
//     left: 20
//     ,
//     top: 15
//     )
//     ,
//     child: Row
//     (
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
//     buildTextButton
//     (
//     MaterialCommunityIcons.facebook,"
//     Facebook
//     "
//     ,
//     Palette.facebookColor),
//     buildTextButton
//     (
//     MaterialCommunityIcons.google_plus,"
//     Google
//     "
//     ,
//     Palette.googleColor),
//     ],
//     ),
//     ),
//     ],
//     ),
//     )
//     ,
//
//
//     ]
//     ,
//     )
//     ,
//
//     );
//   }
// }
//
//
// Widget BTextField(IconData icon, String hint, bool isPassword, bool isEmail) {
//   return Padding(
//     padding: const EdgeInsets.only(bottom: 8),
//     child: TextField(
//       obscureText: isPassword,
//       keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
//       decoration: InputDecoration(
//           prefixIcon: Icon(icon),
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(35),
//               borderSide: BorderSide(color: Colors.white)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(35),
//               borderSide: BorderSide(color: Colors.white)),
//           contentPadding: EdgeInsets.all(10),
//           hintText: hint,
//           hintStyle: TextStyle(fontSize: 16, color: Colors.white)),
//     ),
//   );
// }}
//
// TextButton buildTextButton(IconData icon, String title, Color backgroundColor) {
//   return TextButton(
//     onPressed: () {},
//     style: TextButton.styleFrom(
//         side: BorderSide(width: 1, color: Colors.grey),
//         minimumSize: Size(145, 40),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         primary: Colors.white,
//         backgroundColor: backgroundColor),
//     child: Row(
//       children: [
//         Icon(
//           icon,
//         ),
//         SizedBox(
//           width: 5,
//         ),
//         Text(
//           title,
//         )
//       ],
//     ),
//   );
// }
