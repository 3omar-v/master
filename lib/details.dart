// import 'package:flutter/material.dart';

// class details extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() 
//   {
//     return _details();
//   }
// }

// class _details extends State<details> {
//   @override
//   Widget build(BuildContext context) 
//   {
//     return Scaffold
//     (
//       appBar: AppBar
//       (
//         leading: IconButton(onPressed: () {
//           Navigator.of(context).pop();
//         }, icon: Icon(Icons.arrow_back)),
//       ),


//           body: Container(
//         width: double.infinity  ,
//         child: Column(
//           children: [
//             Stack(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(25),
//                 height: 200,
//                 width: 200,

//                 decoration: BoxDecoration(
//                   color: Colors.orange.withOpacity(0.3),
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.orange,
//                     borderRadius: BorderRadius.circular(100),
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 200,
//                 width: 200,
//                 child: Image.asset("assets/images/image1.png"),
//               ),
//             ],
//           ),

//           Container
//           (
//             child: Row
//             (
//               children: 
//               [
//                 Column
//                 (
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: 
//                   [
//                     Container
//                     (
//                       child: Text("banana", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
//                     ),
//                     Container
//                     (
//                       child: Text("by Farm fresh veg shop", style: TextStyle(fontSize: 14,color: Colors.grey),),
//                     )
//                   ],
//                 ),

//                 Spacer(),

//                 Container
//                 (
//                   width: 83,
//                   height: 38,
//                   margin: EdgeInsets.only(right: 20),
//                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),border: Border.all(color: Colors.black)),
//                   child: Row
//                   (
//                     children: 
//                     [
//                       Container
//                       (
//                         child:Icon(Icons.star,color: Colors.yellow,)
//                       ),
//                       Container
//                       (
//                         alignment: Alignment.centerRight,
//                         margin: EdgeInsets.only(left: 20),
//                         child: Text("4.7",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                       )
//                     ],
//                   ),
                  
//                 )
//               ],
//             ),
//           ),

// //===========================================================================================================

//             Container
//             (
//               margin: EdgeInsets.fromLTRB(30, 60, 0, 0),
//               child: Row
//               (
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: 
//                 [
//                   Container
//                   (
//                     child: Text("\$1.32", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
//                   ),
              
//                   Container
//                   (
//                     width: 108,
//                     height: 38,
//                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),border: Border.all(color: Colors.black)),
//                     child: Row
//                     (
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: 
//                       [
//                         Container
//                         (
//                           child: IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
//                         ),

//                         Container
//                         (
//                           child: Text("2"),
//                         ),
//                         Container
//                         (
//                           child: IconButton(onPressed: (){}, icon: Icon(Icons.add)),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container
//                   (
//                     width: 112,
//                     height: 36,
//                   )
//                 ],
//               ),
//             )
//           ],
//         )
        
//         ),
//     );
//   }
// }