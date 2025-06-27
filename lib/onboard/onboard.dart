import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Onboard extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return _onboard();
  } 
}

class _onboard extends State<Onboard>
{
  List data = 
  [
    {
      "image": "assets/images/image1.png",
      "title": "سوقي",
      "suptitle": "مرحبا بك في سوقي,حيث الأمان و سرعة التوصيل هي مهارتنا",
      "colorbody": Colors.orange,
      "colortext": Colors.white,
      "button": Colors.orange,
      "b_text": Colors.orange,
    },
    {
      "image": "assets/images/image3.png",
      "title": "خدمة سوقي",
      "suptitle": "تسوق كل ما تحتاجهبنقرة واحدة من منزلك, \n وبكل راحة",
      "colorbody": Colors.white,
      "colortext": Colors.orange,
      "button": Colors.black,
      "b_text": Colors.black,
    },
    {
      "image": "assets/images/image4.png",
      "title": "ابدء معنا",
      "suptitle": "ابدأ الآن وأرسل أول طلب لك فيدقائق! لأن الوقت ثمين، ونحن هنالجعل التوصيل أسرع وأسهلمن أي وقت مضى",
      "colorbody": Colors.orange,
      "colortext": Colors.white,
      "button": Colors.black,
      "b_text": Colors.black,
    }
  ];

//==========================================================================================

  int currentindex = 0;
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
        backgroundColor: data[currentindex]["colorbody"],
        body: SingleChildScrollView(
        child: Column
        (
          children: 
          [
            Row
            (
              children: 
              [

//==========================================================================================

                currentindex==0?SizedBox(): InkWell
                (
                  child: Container
                              (
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.fromLTRB(25, 20, 0, 0),
                                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20), border: Border.all(color: data[currentindex]["button"])),
                                  alignment: Alignment.center,
                                  child: InkWell
                                  (
                                    onTap: () => setState(() {
                                      currentindex--;
                                    }),
                                    child: Icon(Icons.arrow_back),)
                              ),
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
                margin: EdgeInsets.fromLTRB(20, 33, 20, 20),
                child: InkWell(
                  onTap: ()=> setState(() {
                    Navigator.of(context).pushNamed("om");
                  }),
                  child: Text("تخطي"),
                ),
              ),
            ),
              ],
            ),

//==========================================================================================

            Container
            (
              alignment: Alignment.center,
              child: Container
              (
                padding: EdgeInsets.all(30),
                child: Image.asset("${data[currentindex]["image"]}"),
                width: 300,
                height: 300,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(170),color: Colors.yellow),
                margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
              )
            ),

//==========================================================================================

            Container
            (
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Text("${data[currentindex]["title"]}",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 32,color: data[currentindex]["colortext"],),),
            ),

//==========================================================================================

            Container
            (
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 76, 0, 0),
              child: Text("${data[currentindex]["suptitle"]}", textAlign: TextAlign.center ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22,color:  data[currentindex]["colortext"],) ,),
            ),

//==========================================================================================

            Container
            (margin: EdgeInsets.all(30),
              child: Row
              (
                children: 
                [
                  circle(width:currentindex==0? 15:5),
                  circle(width:currentindex==1? 15:5),
                  circle(width:currentindex==2? 15:5),

//==========================================================================================

                  Spacer(),
                  Container
                  (
                    width: 64,
                    height: 64,
                    margin: EdgeInsets.fromLTRB(0, 60, 10, 0),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(32),color: Color.fromARGB(255, 255, 214, 161)),
                    child: Container
                    (
                      alignment: Alignment.center,
                      child: InkWell
                      (
                        onTap: () => setState(() {
                          currentindex++;
                          if(currentindex == 3 )
                          {
                            Navigator.of(context).pushNamed("om");
                          }
                        }),
                      child: Text("التالي"),
                      )
                    ),
                  )
                ],
              ),
            )
          ],
        ),)
    );
  }
}

//==========================================================================================

class circle extends StatelessWidget 
{
  circle({super.key, required this.width});
  late double width;

  @override
  Widget build(BuildContext context) 
  {
    return Container
                  (
                    width: width,
                    height: 6,
                    decoration: BoxDecoration(color: Colors.orange[100],borderRadius: BorderRadius.circular(5),), 
                    margin:EdgeInsets.fromLTRB(2, 80, 0, 0),
                  );
  }
}

