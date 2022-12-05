import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
var parser = EmojiParser();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: FloatingActionButton(onPressed: (){},
                    child: IconButton(onPressed: (){},
                      icon: Icon(Icons.list),
                    iconSize: 30,
                    color: Colors.black,),
                    backgroundColor: Colors.white,),
                  ),

                  Row(
                    children: [
                      Container(
                        width: 50,
                          height: 40,
                          margin: EdgeInsets.only(right: 15),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/a/ae/Flag_of_the_United_Kingdom.svg/125px-Flag_of_the_United_Kingdom.svg.png")),
                      Text("English", style: TextStyle(color: Colors.black, fontSize: 20),),
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.arrow_drop_down_sharp),
                      iconSize: 40,
                      color: Colors.black,)
                    ],
                  )
                ],
              ),
              Row(
                children: [
                 Container(
                   margin: EdgeInsets.only(top: 20,left: 20,right: 20),
                   width: 70,
                   height: 70,
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(
                       image: NetworkImage("https://t3.ftcdn.net/jpg/02/52/42/46/360_F_252424647_xCMdmXLeu0ve0HeoPwDbT7PQUOetqh9e.jpg"),
                       fit: BoxFit.fill
                     )
                   ),
                 ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(" Martha Stewart", style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey
                        ),),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Row(
                            children: [
                              Icon(Icons.location_pin),
                              Text("United Kingdom", style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey
                              ),),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 25,left: 20),
                child: Row(
                  children: [
                    Text("Welcome back!", style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,right: 10,left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                  .center,
                  children: [
                    Container(
                      height: 300,
                      width: 370,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            side: BorderSide(color: Colors.black, width: 2)),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: ElevatedButton(onPressed: (){},
                                      child: Text("InterMediate",
                                      style: TextStyle(
                                        color: Colors.blue
                                      ),),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightGreenAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(color: Colors.black,
                                      width: 2)
                                    ),
                                    shadowColor: Colors.black,
                                    foregroundColor: Colors.red
                                  ),),
                                ),
                                Text("Today's \n Challenge",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      fontSize: 27,
                                      color: Colors.black,
                                  ),),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20),
                                  child: Text("German Meals",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.blue,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30,left: 30),
                                  child: Row(
                                    children: [
                                      Icon(Icons.diamond_outlined),
                                      Text("  Take this lesson to learn \n  a earn new Milestone",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                  width: 150,
                                  height: 150,
                                  child: Image(image: NetworkImage("https://assets.stickpng.com/images/580b585b2edbce24c47b2d43.png"))),
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                child: Row(
                  children: [
                    Text("Your Courses", style: TextStyle(
                      fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      letterSpacing: 6,
                    ),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              side: BorderSide(color: Colors.black, width: 3)),
                          shadowColor: Colors.black,
                          elevation: 50,
                          borderOnForeground: true,
                          color: Colors.yellow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text("Spanish", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black,
                                  letterSpacing: 3,
                                ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text("Beginner", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black,
                                  letterSpacing: 3,
                                ),),
                              ),
                              Container(
                                margin: EdgeInsets.all(20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                     CircularPercentIndicator(
                                          radius: 30.0,
                                          lineWidth: 5.0,
                                          percent: 0.45,
                                          center: new Text("43%",
                                          style: TextStyle(
                                            color: Colors.black
                                          ),),
                                          backgroundColor: Colors.grey,
                                          progressColor: Colors.blue,
                                        ),

                                   ] )
                              )],
                                ),
                              )

                          ),
                      Container(
                          width: 200,
                          height: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                side: BorderSide(color: Colors.black, width: 3)),
                            shadowColor: Colors.black,
                            elevation: 50,
                            borderOnForeground: true,
                            color: Colors.blue,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Italian", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                    letterSpacing: 3,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Advanced", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                    letterSpacing: 3,
                                  ),),
                                ),
                                Container(
                                    margin: EdgeInsets.all(20),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          CircularPercentIndicator(
                                            radius: 30.0,
                                            lineWidth: 5.0,
                                            percent: 0.16,
                                            center: new Text("16%",
                                              style: TextStyle(
                                                  color: Colors.black
                                              ),),
                                            backgroundColor: Colors.yellow,
                                            progressColor: Colors.white,
                                          ),

                                        ] )
                                )],
                            ),
                          )

                      ),
                      Container(
                          width: 200,
                          height: 200,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                side: BorderSide(color: Colors.black, width: 3)),
                            shadowColor: Colors.black,
                            elevation: 50,
                            borderOnForeground: true,
                            color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text("Japanese", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black,
                                    letterSpacing: 3,
                                  ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text("Beginner", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.black,
                                    letterSpacing: 3,
                                  ),),
                                ),
                                Container(
                                    margin: EdgeInsets.all(20),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          CircularPercentIndicator(
                                            radius: 30.0,
                                            lineWidth: 5.0,
                                            percent: 0.88,
                                            center: new Text("88%",
                                              style: TextStyle(
                                                  color: Colors.black
                                              ),),
                                            backgroundColor: Colors.white,
                                            progressColor: Colors.black,
                                          ),

                                        ] )
                                )],
                            ),
                          )

                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
