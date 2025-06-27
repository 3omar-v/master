import 'package:flutter/material.dart';
// import 'package:souq/details/details.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // Add search functionality here
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fruits &\nVegetables",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 50),
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                        255,
                        242,
                        201,
                        76,
                      ), //rgba(242, 201, 76, 1)
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Expanded(flex: 1, child: SizedBox()),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Stay home\n we deliver",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Any where... Any time!!",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Expanded(flex: 1, child: SizedBox()),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 185,
                    child: Image.asset("assets/images/pannar.png"),
                  ),
                ],
              ),
              Container(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 3,
                    crossAxisSpacing: 3,
                    childAspectRatio: 0.75,
                  ),

                  itemCount: 4,
                  itemBuilder: (context, index) {
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

class Item extends StatelessWidget {
  final int index;

  Item({required this.index});
  List data= [
{
  "image": "assets/images/image1.png",
  "title": "Bannana",
  "sub": "by weight \$1.32 kg",
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
      height: 270,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 100,
                width: 100,

                decoration: BoxDecoration(
                  color: data[index]["backcolor"].withOpacity(0.3),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: data[index]["backcolor"],
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image.asset("${data[index]["image"]}"),
              ),
            ],
          ),
          Expanded(flex: 2, child: SizedBox()),

          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "${data[index]["title"]}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              "${data[index]["sub"]}",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Expanded(flex: 1, child: SizedBox()),
          Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${data[index]["price"]}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(child: SizedBox()),
                // Container(
                  
                //   height: 50,
                //   width: 50,
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 111, 207, 151),
                
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   child: IconButton(
                //     icon: Icon(Icons.add, color: Colors.white),
                //     // onPressed: () {
                //     //   Navigator.push(
                //     //     context,
                //     //     // MaterialPageRoute(
                //     //     //   // builder: (context) => detals(),
                //     //     //   ),
                //     //     );
                //     // },
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}