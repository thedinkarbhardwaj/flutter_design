import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';


List<String> images = [
  "https://c4.wallpaperflare.com/wallpaper/908/772/860/men-alone-wallpaper-preview.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklqeb9MXMaAqa7SDjUB7Dcvj3UuE00S5FvoFvpFjjjfp8v4_jDo8pjUcoPJTXgup8LTc&usqp=CAU",
  "https://media.istockphoto.com/id/1130801900/photo/hiker-sitting-on-top-of-the-hill-waiting-for-sunrise-and-enjoying-scenic-view.jpg?s=612x612&w=0&k=20&c=npdpEK0fSLtE26lhHi5ket7zbbxGzu9WBeKqsfiHop0=",
  "https://imgd.aeplcdn.com/1056x594/n/cw/ec/102709/ntorq-125-right-front-three-quarter.jpeg?isig=0&q=75",
  "https://c4.wallpaperflare.com/wallpaper/908/772/860/men-alone-wallpaper-preview.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSklqeb9MXMaAqa7SDjUB7Dcvj3UuE00S5FvoFvpFjjjfp8v4_jDo8pjUcoPJTXgup8LTc&usqp=CAU",
  "https://media.istockphoto.com/id/1130801900/photo/hiker-sitting-on-top-of-the-hill-waiting-for-sunrise-and-enjoying-scenic-view.jpg?s=612x612&w=0&k=20&c=npdpEK0fSLtE26lhHi5ket7zbbxGzu9WBeKqsfiHop0=",
  "https://imgd.aeplcdn.com/1056x594/n/cw/ec/102709/ntorq-125-right-front-three-quarter.jpeg?isig=0&q=75",
];

class CoursesScreen extends StatelessWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFAD2C"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              title: Text(
                "Curse",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: Icon(
                Icons.linear_scale_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Spanish",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.indigo,
                            ),
                            label: Text(
                              "Begginer",
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 20,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: BorderSide(color: Colors.black))),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.diamond_outlined),
                            Icon(Icons.diamond_outlined),
                            Text(
                              "2 Milestone",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 20),

                    child: CircularPercentIndicator(
                      radius: 70.0,
                      lineWidth: 4.0,
                      percent: 0.42,
                      center: new Text("43%\n Completed",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black
                        ),),
                      backgroundColor: Colors.blue,
                      progressColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
           Container(
             margin: EdgeInsets.all(10),
             child: Row(
               children: [
                 Expanded(
                   flex:1,
                   child: Container(
                     width: 150,
                     height: 170,
                     child: Card(
                       color: Colors.white,
                       child: Column(
                         children: [
                           Container(
                             margin: EdgeInsets.only(top: 20),
                             child: FloatingActionButton(onPressed: (){},
                               child: IconButton(onPressed: (){},
                                 icon: Icon(Icons.book),
                                 iconSize: 30,
                                 color: Colors.black,),
                               backgroundColor: Colors.white,),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 20),
                             child: Text("Book 1",
                               style: TextStyle(
                                   color: Colors.black,
                                 fontWeight: FontWeight.bold
                               ),),
                           ),
                           Text("4/6",
                             style: TextStyle(
                                 color: Colors.grey
                             ),),
                           Container(
                             margin: EdgeInsets.all(15),
                             child: new LinearProgressBar(
                               maxSteps: 6,
                               progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                               currentStep: 5,
                               progressColor: Colors.yellow,
                               backgroundColor: Colors.grey,
                             ),
                           )

                         ],
                       ),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(
                     width: 150,
                     height: 170,
                     child: Card(
                       color: Colors.white,
                       child: Column(
                         children: [
                           Container(
                             margin: EdgeInsets.only(top: 20),
                             child: FloatingActionButton(onPressed: (){},
                               child: IconButton(onPressed: (){},
                                 icon: Icon(Icons.shopping_bag),
                                 iconSize: 30,
                                 color: Colors.black,),
                               backgroundColor: Colors.white,),
                           ),
                           Container(
                             margin: EdgeInsets.only(top: 20),
                             child: Text("Book 2",
                               style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.bold
                               ),),
                           ),
                           Text("2/6",
                             style: TextStyle(
                                 color: Colors.grey
                             ),),
                           Container(
                             margin: EdgeInsets.all(15),
                             child: new LinearProgressBar(
                               maxSteps: 6,
                               progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                               currentStep: 2,
                               progressColor: Colors.pink,
                               backgroundColor: Colors.grey,
                             ),
                           )

                         ],
                       ),
                     ),
                   ),
                 ),
               ],
             ),
           ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      width: 150,
                      height: 170,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: FloatingActionButton(onPressed: (){},
                                child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.shop),
                                  iconSize: 30,
                                  color: Colors.black,),
                                backgroundColor: Colors.white,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Book 3",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                            Text("3/6",
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                            Container(
                              margin: EdgeInsets.all(15),
                              child: new LinearProgressBar(
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: Colors.blue,
                                backgroundColor: Colors.grey,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 150,
                      height: 170,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: FloatingActionButton(onPressed: (){},
                                child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.book),
                                  iconSize: 30,
                                  color: Colors.black,),
                                backgroundColor: Colors.white,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Book 4",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                            Text("4/6",
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                            Container(
                              margin: EdgeInsets.all(15),
                              child: new LinearProgressBar(
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 5,
                                progressColor: Colors.green,
                                backgroundColor: Colors.grey,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Container(
                      width: 150,
                      height: 170,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: FloatingActionButton(onPressed: (){},
                                child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.book),
                                  iconSize: 30,
                                  color: Colors.black,),
                                backgroundColor: Colors.white,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Book 5",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                            Text("1/6",
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                            Container(
                              margin: EdgeInsets.all(15),
                              child: new LinearProgressBar(
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 1,
                                progressColor: Colors.deepOrange,
                                backgroundColor: Colors.grey,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 150,
                      height: 170,
                      child: Card(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: FloatingActionButton(onPressed: (){},
                                child: IconButton(onPressed: (){},
                                  icon: Icon(Icons.book),
                                  iconSize: 30,
                                  color: Colors.black,),
                                backgroundColor: Colors.white,),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Text("Book 6",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                            ),
                            Text("4/6",
                              style: TextStyle(
                                  color: Colors.grey
                              ),),
                            Container(
                              margin: EdgeInsets.all(15),
                              child: new LinearProgressBar(
                                maxSteps: 6,
                                progressType: LinearProgressBar.progressTypeLinear, // Use Linear progress
                                currentStep: 5,
                                progressColor: Colors.orange,
                                backgroundColor: Colors.grey,
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
