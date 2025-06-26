import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class third extends StatefulWidget {
    @override
    State<StatefulWidget> createState() 
    {
        return _third();
    }
}

class _third extends State<third> {
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
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: const Color.fromARGB(255, 112, 176, 28)),
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.fromLTRB(0, 26, 20, 0),
                                    child: InkWell
                                    (
                                        onTap: () {},
                                        child: Text("تخطي" , style: TextStyle(color: Colors.white),),
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
                                    child: Image.asset("assets/images/image4.png", ),
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
                                child: Text("حدد اللعة المناسبة لك", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),),
                            ),

//==========================================================================================

                            Container
                                (
                                    width: 264,
                                    height: 48,
                                    margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.black , width: 2 )),
                                    alignment: Alignment.center,
                                    child: InkWell
                                    (
                                        onTap: () {},
                                        child: Text("اللغة العربية", style: TextStyle(fontSize: 16),),
                                    ),
                                ),

//==========================================================================================

                            Container
                                (
                                    width: 264,
                                    height: 48,
                                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(22), border: Border.all(color: Colors.black , width: 2 )),
                                    alignment: Alignment.center,
                                    child: InkWell
                                    (
                                        onTap: () {},
                                        child: Text("english", style: TextStyle(fontSize: 16),),
                                    ),
                                ),
                        ]
                    ),

//==========================================================================================

                        Row
                        (
                            children: 
                            [
                                Container
                            (
                                width: 7,
                                height: 6,
                                decoration: BoxDecoration(color: Colors.orange[100],shape: BoxShape.circle,), 
                                margin:EdgeInsets.fromLTRB(30, 80, 3, 0),
                            ),

//==========================================================================================

                                Containe(),
                                Containe(),

//==========================================================================================

                                Container
                            (
                                width: 30,
                                height: 6,
                                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(3)),
                                margin:EdgeInsets.fromLTRB(2.5, 80, 0, 0),
                            ),

//==========================================================================================

                                Containe(),

//==========================================================================================

                                Spacer(),
                                Container
                                (
                                    width: 64,
                                    height: 64,
                                    margin: EdgeInsets.fromLTRB(0, 60, 30, 0),
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
                        ),
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
                margin:EdgeInsets.fromLTRB(2, 80, 2, 0),
            );
}

}