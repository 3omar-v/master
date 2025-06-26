// import 'package:flutter/material.dart';

// class om extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() 
//   {
//     return _om();
//   }
// }

// class _om extends State<om> 
// {
//   @override
//   Widget build(BuildContext context) 
//   {
//     return Scaffold
//     (
//       appBar: AppBar
//       (
//         leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
//         actions: 
//         [
//           InkWell
//           (
//             onTap: () {setState(() {
//               Navigator.of(context).pushNamed("ar");
//             // Navigator.of(context).pushNamed("ar");
//           });},
//             child: Icon(Icons.shopping_cart))
          
//         ],
//       ),
//       body: Column
//       (
//         children: 
//         [

// //==========================================================================================

//           Align(
//             alignment: Alignment.topLeft,
//             child: Container
//             (
//               margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
//               child: Text("Fruits &\nVegetables", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//             ),
//           ),

// //==========================================================================================

          
//           Stack(
//             children: [
//               Container
//               (
//                 width: 353,
//                 height: 147,
//                 margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
//                 decoration: BoxDecoration(borderRadius:BorderRadius.circular(30),color: Colors.amber   ),
//                 child: Row
//                 (
//                   children: 
//                   [
              
//               //===========================================
              
//                     Container
//                     (
//                       margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
//                       child: Column
//                       (
//                         children: 
//                         [
//                           Container
//                           (
//                             child: Text("Stay home\nwe deliver", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
//                           ),
//                           Container
//                           (
//                             child: Text("Any where... Any time!!", style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),),
//                           ),
//                         ],
//                       ),
//                     ),
              
//               //===========================================
              
//                     Container
//                     (
//                       child: Image.asset("assets/images/image8.png"),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),

// //==========================================================================================

//             Row
//             (
//               children: 
//               [
//                 shape(currentindex: 0),
//                 shape(currentindex: 1,),
//               ],
//             ),

//             Row
//             (
//               children: 
//               [
//                 shape(currentindex: 2,),
//                 shape(currentindex: 3,),
//               ],
//             )
//         ],
//       ),
//     );
//   }
// }

// //==============================================================================================================================================================================================================================
// //==============================================================================================================================================================================================================================

// class shape extends StatelessWidget {
//   shape({super.key, required this.currentindex});
//   late int currentindex;
//     List data =
//   [
//     {
//       "image": "assets/images/image1.png",
//       "title": "Banana",
//       "sup": "by weight 1.32 kg",
//       "price": "1.32",
//       "color": Colors.amber,
//     },
//     {
//       "image": "assets/images/image2.png",
//       "title": "Cabbage",
//       "sup": "by weight 0.82 kg",
//       "price": "0.82",
//       "color": Colors.green,
//     },
//     {
//       "image": "assets/images/image4.png",
//       "title": "Tomatto",
//       "sup": "by weight 1.23 kg",
//       "price": "1.32",
//       "color": Colors.red,
//     },
//     {
//       "image": "assets/images/image10.png",
//       "title": "Egg plant",
//       "sup": "by weight 0.82 kg",
//       "price,": "0.82",
//       "color": Colors.purple,
//     },
//   ];
//   @override
//   Widget build(BuildContext context) 
//   {
//     return 
//           Container
//           (
//             height: 234,
//             width: 162,
//             margin: EdgeInsets.all(35),
//             decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.5), borderRadius: BorderRadius.circular(20)),
//             child: Column
//             (
//               children: 
//               [
//                 Stack
//                 (
//                   children: 
//                   [

// //==========================================================================================

//                     Container
//                     (
//                       width: 93,
//                       height: 96,
//                       decoration: BoxDecoration(color: data[currentindex]["color"].withOpacity(0.3), borderRadius: BorderRadius.circular(80),border: Border.all(color: Color.fromARGB(255, 229, 229, 229),width: 2)),
//                       margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
//                       padding: EdgeInsets.all(10),
//                       child: Container
//                       (
//                         padding: EdgeInsets.all(100),
//                         decoration: BoxDecoration(color: data[currentindex]["color"], borderRadius: BorderRadius.circular(60)),
//                       ),
//                     ),

// //==========================================================================================

//                     Container
//                     (
//                       height: 91,
//                       width: 91,
//                       margin:EdgeInsets.fromLTRB(0, 20, 0, 0),
//                       child: Image.asset("${data[currentindex]["image"]}"),
//                     ),
//                   ],
//                 ),

// //==========================================================================================

//                 Container
//                     (
//                       alignment: Alignment.topLeft,
//                       margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
//                       child: Text("${data[currentindex]["title"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                     ),

// //==========================================================================================

//                 Container
//                     (
//                       alignment: Alignment.topLeft,
//                       margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
//                       child: Text("${data[currentindex]["sup"]}",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color.fromARGB(255, 189, 189, 189)),),
//                     ),

// //==========================================================================================

//                 Row
//                 (
//                   children: 
//                   [
//                     Container
//                     (
//                       alignment: Alignment.topLeft,
//                       margin: EdgeInsets.fromLTRB(20, 20, 0, 5),
//                       child: Text("${data[currentindex]["price"]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
//                     ),

// //==========================================================================================
//                     Spacer(),
//                     InkWell(onTap: () {
                      
//                     },
//                       child: Container
//                       (
//                         width: 36,
//                         height: 36,
//                         margin: EdgeInsets.fromLTRB(0, 12, 11, 0),
//                         decoration: BoxDecoration(color: Color.fromARGB(255, 111, 207, 151),borderRadius: BorderRadius.circular(10)),
//                         child: Container
//                         (
//                           alignment: Alignment.center,
//                           child:  Icon(Icons.add,color: Colors.white,),
//                         ),
//                       ),
//                     )

// //==========================================================================================

//                   ],
//                 )
//               ],
//             ),
//           );
//   }
// }