import 'dart:math';

import 'package:app_om/onboard/third.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {
    @override
    State<StatefulWidget> createState() 
    {
        return _second();
    }
}

class  _second extends State<second> {
    @override
    Widget build(BuildContext context) 
    {
        return Scaffold
        (
        body: SingleChildScrollView
        (
            child: Column
            (   
                children: 
                [
                    Row
                    (
                        children: 
                        [
                            Container
                            (
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                                decoration: BoxDecoration(borderRadius:BorderRadius.circular(20), border: Border.all(color: Colors.black, width: 1)),
                                alignment: Alignment.center,
                                child: Text("<"),
                            ),

//==========================================================================================

                            Spacer(),
                            Container
                            (
                                child: Container
                                (
                                    width: 64,
                                    height: 24,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: const Color.fromARGB(255, 255, 214, 161)),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.fromLTRB(0, 26, 20, 0),
                                    child: InkWell
                                    (
                                        onTap: () {},
                                        child: Text("تخطي"),
                                    ),
                                ),
                            ),
                        ],
                    ),

//===============================================================================================================

                    Column
                    (
                        children: 
                        [
                            Container
                            (
                                alignment: Alignment.center,
                                child: Container
                                (
                                    padding: EdgeInsets.all(30),
                                    child: Image.asset("assets/images/image3.png", ),
                                    width: 300,
                                    height: 300,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(170),color: Color.fromARGB(255, 242, 201, 76)),
                                    margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
                                )
                            ),

    //==========================================================================================

                                Container
                                (
                                    margin:EdgeInsets.fromLTRB(0, 70, 0, 0),
                                    child: Text("خدمة سوقي", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
                                ),

//==========================================================================================

                            Container
                            (
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                                child: Text("تسوق كل ما تحتاجه  بنقرة واحدة من منزلك, وبكل راحة", style: TextStyle(fontSize: 22, fontWeight:FontWeight.w400), ),
                            ),
                        ],
                    ),

//===============================================================================================================

                    Row
                    (
                        children: 
                        [
                            Container
                            (
                                width: 7,
                                height: 6,
                                decoration: BoxDecoration(color: Colors.orange[100],shape: BoxShape.circle,), 
                                margin:EdgeInsets.fromLTRB(30, 170, 0, 0),
                            ),

//==========================================================================================

                            Container
                            (
                                width: 30,
                                height: 6,
                                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(3)),
                                margin:EdgeInsets.fromLTRB(2.5, 170, 0, 0),
                            ),

//==========================================================================================

                            Containe(),
                            Containe(),
                            Containe(),

//==========================================================================================

                            Spacer(),
                            Container
                            (
                                width: 64,
                                height: 64,
                                margin: EdgeInsets.fromLTRB(0, 150, 30, 0),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Color.fromARGB(255, 255, 214, 161)),
                                child: Container
                                (
                                    alignment: Alignment.center,
                                    child: InkWell(
                                    onTap: () {},
                                    child: Text("التالي"),)
                                ),
                            )
                        ],
                    )
                ],
            ),  
        ),
    );
    }

}


class Containe extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Container
                  (
                    width: 7,
                    height: 6,
                    decoration: BoxDecoration(color: Colors.orange[100],shape: BoxShape.circle,), 
                    margin:EdgeInsets.fromLTRB(2.5, 170, 0, 0),
                  );
  }
}