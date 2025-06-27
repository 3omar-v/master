import 'package:app_om/home/home.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() 
  {
    return _cart();
  }
}

class _cart extends State<Cart> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        leading: IconButton(onPressed: () 
        {
          Navigator.of(context).pop();
        }, 
        icon: Icon(Icons.arrow_back)),
      ),

//==========================================================================================

      
      body: Container
      (
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView
        (
          child: Column
          (
            children: 
            [
              Container
              (
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text("Everything in your \ndoor step",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
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