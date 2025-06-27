import 'package:app_om/home/home.dart';
import 'package:flutter/material.dart';

class ar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() 
  {
    return _ar();
  }
}

class _ar extends State<ar> {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        }, icon: Icon(Icons.arrow_back)),
      ),

      body: Column
      (
        children: 
        [
          Align(
            alignment: Alignment.topLeft,
            child: Container
            (
              margin: EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Text("Everything in your\ndoor step", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),

          GridView.count
          (
            crossAxisCount: 2, // عدد الأعمدة في كل صف
            crossAxisSpacing: 10, // المسافة بين الأعمدة
            mainAxisSpacing: 10, // المسافة بين الصفوف
            padding: EdgeInsets.all(10),
            children: List.generate(4, (index) 
            {
              return Container
              (
                color: Colors.amber,
                child: Center(child: Text('Item $index')),
              );
            }),
          )

          // Row
          // (
          //   children: 
          //   [
          //     shape(currentindex: 0,),
          //     shape(currentindex: 1,),
          //   ],
          // ),

          // Row
          // (
          //   children: 
          //   [
          //     shape(currentindex: 2,),
          //     shape(currentindex: 3,),
          //   ],
          // )
        ],
      ),
    );
  }
}


// Container
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