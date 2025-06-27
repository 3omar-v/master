import 'package:app_om/home/home.dart';
import 'package:flutter/material.dart';

class details extends StatefulWidget {
  @override
  State<StatefulWidget> createState() 
  {
    return _details();
  }
}

class _details extends State<details> 
{
    bool _changed = false;
      void animateBox() async {
  setState(() {
    _changed = true;
  });

  await Future.delayed(Duration(seconds: 2));

  setState(() {
    _changed = false;
  });
}


  int num=0;
  @override
  Widget build(BuildContext context) 
  {
    int index=1;
  List data= 
  [
    {
      "image": "assets/images/image1.png",
      "title": "Bannana",
      "sub": "by weight \$1.32 k  g",
      "price": "\$1.32",
      "backcolor": const Color.fromARGB(255, 242, 201, 76),

    },
    {
      "image": "assets/images/image4.png",
      "title": "Tomatto",
      "sub": "by weight \$1.23 kg",
      "price": "\$1.23",
      "backcolor": const Color.fromARGB(255, 234, 21, 2),
    },
    {
      "image": "assets/images/image2.png",
      "title": "Cabbage",
      "sub": "by weight \$0.82 kg",
      "price": "\$0.82",
      "backcolor": const Color.fromARGB(255, 111, 207, 151),
    },
    {
      "image": "assets/images/image3.png",
      "title": "Cabbage",
      "sub": "by weight \$0.82 kg",
      "price": "\$0.82",
      "backcolor": const Color.fromARGB(255, 207, 204, 34),
    },
  ];

    return Scaffold
    (
      appBar: AppBar
      (
        leading: Container
        (
          width: 23,
          height: 23,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black),),
          child: Center(
            child: IconButton(onPressed: () 
            {
              Navigator.of(context).pop();
            }, 
            icon: Icon(Icons.arrow_back,size: 15,)),
          ),
        ),
      ),

//==========================================================================================

      body: Container
      (
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView
        (
          child: Column
          (
            children: 
            [
              Center(
                child: Stack
                (
                  children: 
                  [
                    Container
                    (
                      margin: EdgeInsets.only(top:20),
                      padding: EdgeInsets.all(12),
                      height: 258,
                      width: 266,
                      decoration: BoxDecoration(color: data[index]["backcolor"].withOpacity(0.3),borderRadius: BorderRadius.circular(140),),
                      child: Container  
                      (
                        decoration: BoxDecoration(color: data[index]["backcolor"],borderRadius: BorderRadius.circular(140),),
                      ),
                    ),

//==========================================================================================

                    Container
                    (
                      margin: EdgeInsets.only(top:20),
                      height: 252,
                      width: 252,
                      child: Image.asset("${data[index]["image"]}"),
                    ),
                  ],
                ),
              ),

//==========================================================================================

              Container
              (
                child: Row
                (
                  children: 
                  [
                    Container
                    (
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                          
                          Container
                          (
                            child: Text("Banana", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                          ),
                      
                          Container
                          (
                            child: Text("by Farm fresh veg shop", style: TextStyle(fontSize: 14,color: Colors.grey),),
                          )
                        ],
                      ),
                    ),

//==========================================================================================

                    Spacer(),
                    Container
                    (
                      width: 83,
                      height: 38,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(border: Border.all(color: Colors.black,),borderRadius: BorderRadius.circular(19)),
                      child: Row
                      (
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: 
                        [
                          Container
                          (
                            child: Icon(Icons.star,color: Colors.amber,),
                          ),

                          Spacer(),
                          Container
                          (
                            child: Text("4.7", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container
                    (
                      margin: EdgeInsets.all(20),
                      child: Column
                      (
                        children: 
                        [
                          Container
                          (
                            alignment: Alignment.centerLeft,
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in posuere dui. In hac habitasse platea dictumst. Morbi vitae tincidunt leo. Etiam id libero at turpis mollis posuere consectetur. ",textAlign: TextAlign.left,style: TextStyle(fontSize: 13),),
                          )
                        ],
                      ),
                    ),

//==========================================================================================

              Container
              (
                margin: EdgeInsets.only(top: 20),
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: 
                  [
                    Container
                    (
                      child: Text("\$1.32",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                    ),

                    Container
                    (
                      width: 108,
                      height: 38,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(19)),
                      padding: EdgeInsets.fromLTRB(6, 0, 6, 0),
                      child: Row
                      (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                        [
                          Container
                          (
                            child: IconButton(onPressed: () => setState(() 
                            {
                              if(num > 0)
                              {
                                num--;
                              }
                            }), 
                            icon: Icon(Icons.remove)),
                          ),

                          Container
                          (
                            child: Text("${num}",style: TextStyle(fontSize: 16),),
                          ),

                          Container
                          (
                            child: IconButton(onPressed: () => setState(() 
                            {
                              num++;  
                            }),  icon: Icon(Icons.add)),
                          )
                        ],
                      ),
                    ),

                    GestureDetector
                    (
                      onTap: () {
                        animateBox();
                      },
                      child: AnimatedContainer
                      (
                        duration: Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        width:  112,
                        height:  36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: _changed ? Colors.green : Colors.amber,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "buy now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )

                  ],
                ),
              ),


//==========================================================================================

              Container
              (
                margin: EdgeInsets.only(top: 50),
                width: 414,
                decoration: BoxDecoration(border: Border.all(width: 1),color: Colors.black),
              ),

//==========================================================================================

              Container
              (
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.centerLeft,
                child: Text("Similar products", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
              ),

//==========================================================================================

              Container
              (
                child: GridView.builder
                (
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 3,crossAxisSpacing: 3,childAspectRatio: 0.75,),
                  itemCount: 4,

                  itemBuilder: (context, index) 
                  {
                    return Item(index: index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

