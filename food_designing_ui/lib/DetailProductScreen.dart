import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_designing_ui/Model.dart';

class DetailProductScreen extends StatefulWidget {

  final String imgurl;
  final String itemname;
  final String itemprice;

  const DetailProductScreen(this.imgurl,this.itemname,this.itemprice, {Key? key}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();

}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {

    List<Model> list = [];
    list.add(Model("burger.png", "Burger", 50,Colors.orange));
    list.add(Model("pizza.png", "Pizza", 60,Colors.lightBlueAccent));
    list.add(Model("fries.png", "Fries", 40,Colors.grey));
    list.add(Model("hotdog.png", "Hotdog", 20,Colors.orange));
    list.add(Model("popcorn.png", "Popcorn", 30,Colors.lightBlueAccent));
    list.add(Model("sandwich.png", "Sandwich", 40,Colors.orange));

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ListTile(leading: Icon(Icons.linear_scale_sharp),trailing: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xff94d500),
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {
                },
              ),
            ),),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 15),
            child: Row(
              children: [
                Text("    "+widget.itemname, style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2,
                height: 1.3),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/"+widget.imgurl, width: 220,height: 200,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, bottom: 10),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.redAccent,
                        child: IconButton(
                          icon: Icon(
                            Icons.thumb_up,
                            color: Colors.black,
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,right: 20),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.redAccent,
                        child: IconButton(
                          icon: Icon(
                            Icons.lock_clock,
                            color: Colors.black,
                          ),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                    child: Container(
                        decoration:BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                          color: Colors.grey,
                        ),
                      padding: EdgeInsets.all(15),

                        child: Text("Rs "+widget.itemprice, style: TextStyle(color: Colors.black,fontSize: 25, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,))),
                Expanded(
                  flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 20),
                      decoration:BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15),bottomLeft: Radius.circular(15)),
                      ),

                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,bottom: 20,left: 10),
                        decoration:BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black,width: 2),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        padding: EdgeInsets.all(12),
                        width: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.margin),
                            Text("2"),
                            Icon(Icons.add)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Text("Add to cart", style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight
                        .bold),
                        ),
                      )],
                ),
                    ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              children: [
                Text("Featured".toUpperCase(), style: TextStyle(color: Colors.black,fontSize: 27,fontWeight: FontWeight.bold,
                letterSpacing: 3),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(itemCount: list.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(

                        width: 200,
                        height: 250,
                        margin: const EdgeInsets.all(10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: const BorderSide(color: Colors.black, width: 2)
                          ),
                          color: list[index].backgroundcolour,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0), //add border radius
                                child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Image.asset("assets/"+list[index].img.toString(), width: 80, height: 100,)
                                  // Image.network(
                                  //   "https://raw.githubusercontent.com/rajayogan/FlutterUI---Emojis/master/assets/burger.png",
                                  //   height: 80,
                                  //   width: 100,
                                  // ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(""+list[index].itename.toString(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      wordSpacing: 1,
                                      letterSpacing: 1
                                  ),),
                              ),
                              Text(""+list[index].itemprice.toString()+"Rs",

                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    wordSpacing: 1,
                                    letterSpacing: 1
                                ),),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }
}
