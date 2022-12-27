
import 'package:flutter/material.dart';
import 'package:food_designing_ui/DetailProductScreen.dart';
import 'package:food_designing_ui/Model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:toast/toast.dart';

class ReceipeScreen extends StatefulWidget {
  const ReceipeScreen({Key? key}) : super(key: key);

  @override
  State<ReceipeScreen> createState() => _ReceipeScreenState();
}

class _ReceipeScreenState extends State<ReceipeScreen> {

  String search = '';
  TextEditingController mycontroller = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    List<Model> list = [];
    list.add(Model("burger.png", "Burger", 50,Colors.orange));
    list.add(Model("pizza.png", "Pizza", 60,Colors.lightBlueAccent));
    list.add(Model("fries.png", "Fries", 40,Colors.grey));
    list.add(Model("hotdog.png", "Hotdog", 20,Colors.orange));
    list.add(Model("popcorn.png", "Popcorn", 30,Colors.lightBlueAccent));
    list.add(Model("sandwich.png", "Sandwich", 40,Colors.orange));


    List<Model> name_of_optons = [];
    name_of_optons.add(Model.name_option("Featured"));
    name_of_optons.add(Model.name_option("Combo"));
    name_of_optons.add(Model.name_option("Favorites"));
    name_of_optons.add(Model.name_option("Recommended"));
    name_of_optons.add(Model.name_option("Special"));
    name_of_optons.add(Model.name_option("Combo"));
    name_of_optons.add(Model.name_option("Favorites"));

    List<Model> featured_data_list = [];
    featured_data_list.add(Model.bottom_featured_data(Colors.blue, "hotdog.png", "Deligious Hot Dog", 6));
    featured_data_list.add(Model.bottom_featured_data(Colors.grey, "burger.png", "Veg Burger", 12));
    featured_data_list.add(Model.bottom_featured_data(Colors.lightGreenAccent, "popcorn.png", "Popcorn", 3));
    featured_data_list.add(Model.bottom_featured_data(Colors.redAccent, "sandwich.png", "Sandwich", 8));
    featured_data_list.add(Model.bottom_featured_data(Colors.green, "fries.png", "Fries", 5));

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const ListTile(
                leading: Icon(Icons.linear_scale_sharp),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/tuxedo.png'),
                )
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: const [
                  Text("SEARCH FOR \nRECIPES",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        wordSpacing: 1,
                        letterSpacing: 1
                    ),),],),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                  controller: mycontroller,
                  onChanged: (String ? value){

                    setState(() {
                      search = value!.toString();
                    });
                  },
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      labelText: "Search",
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                      border:OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.black,
                              width: 4
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      )
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: const [
                  Text("Recommended",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        wordSpacing: 1,
                        letterSpacing: 1
                    ),),],),
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
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailProductScreen(list[index].img.toString(),list[index].itename.toString(),list[index].itemprice.toString()),
                                    ));

                              });
                            },
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
                          ),
                        );
                      }),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: name_of_optons.length,
                      itemBuilder: (context,index){

                        return Container(
                          margin: const EdgeInsets.all(20),
                          child: Text(name_of_optons[index].names_of_options.toString(), style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20
                          ),
                          ),
                        );
                      }),
                )
              ],
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: featured_data_list.length,
                itemBuilder: (context,index){
                  late String poistion = featured_data_list[index].itename.toString();

                  if(mycontroller.text.isEmpty){
                    return Container(
                        margin: const EdgeInsets.only(top: 15,bottom: 5,right: 20,left: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        decoration:BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.all(15),
                              child: Card
                                (color:featured_data_list[index].backgroundcolour,
                                  child: Center(child: Image.asset("assets/"+featured_data_list[index].img.toString(), width: 60, height: 60,))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(""+featured_data_list[index].itename.toString(), style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 200,
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text("\$" + featured_data_list[index].itemprice.toString(), style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        )

                    );
                  }

                  else if(poistion.toLowerCase().contains(mycontroller.text.toLowerCase())){
                    //int po = int.parse(poistion);
                    return Container(
                        margin: const EdgeInsets.only(top: 15,bottom: 5,right: 20,left: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 130,
                        decoration:BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.all(15),
                              child: Card
                                (color:featured_data_list[index].backgroundcolour,
                                  child: Center(child: Image.asset("assets/"+featured_data_list[index].img.toString(), width: 60, height: 60,))),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text(""+featured_data_list[index].itename.toString(), style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 200,
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Text("\$" + featured_data_list[index].itemprice.toString(), style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ),
                              ],
                            )

                          ],
                        )

                    );
                  }
                  else{
                    return Container();
                  }


                }),
          ],
        ),
      ),
    );
  }
}