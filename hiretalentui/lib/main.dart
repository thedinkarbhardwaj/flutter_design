import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back), color: Colors.grey),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage("https://img.freepik.com/premium-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=2000"),

            )

          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: const Alignment(0.0, -0.40),
                height: 80.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                    color: Colors.black
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Get Coaching',
                        textStyle: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],

                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: const [
                      BoxShadow(blurRadius: 2.0, color: Colors.grey)
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: const Text(
                            'YOU HAVE',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: const Text(
                            '206',
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 60.0),
                    Container(
                      height: 40.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Center(
                        child: Text('Buy more',
                            style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    'MY COACHES',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  Text(
                    'VIEW PAST SESSIONS',
                    style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  )
                ],
              )),
          const SizedBox(height: 10.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg','Tom', 'Available', 1),
              _buildCard('https://media.gettyimages.com/id/1179420343/photo/smiling-man-outdoors-in-the-city.jpg?s=612x612&w=gi&k=20&c=n663L5A4XlwcUvNpX_eu4ur1sMmrD6dt_c1mbWjrLXk=','Ajay', 'Away', 2),
              _buildCard('https://media.gettyimages.com/id/1320686310/photo/businessman-working-from-home-office.jpg?s=612x612&w=gi&k=20&c=sQpxUrKG8ejj6WIaU1PLj3NmNsxhDIlCbV7BQyGGoDs=','Gavy', 'Away', 3),
              _buildCard('https://thumbs.dreamstime.com/b/young-asian-woman-entrepreneur-business-owner-working-computer-home-156754054.jpg','Sheetal', 'Available', 4),
              _buildCard('https://thumbs.dreamstime.com/b/portrait-young-smiling-cheerful-entrepreneur-casual-office-making-phone-call-working-laptop-155845824.jpg','Paul', 'Away', 5),
              _buildCard('https://thumbs.dreamstime.com/b/young-secretary-working-smiling-office-desk-stacks-paperwork-148351616.jpg','Kajol', 'Available', 6),


            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String url, String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image:  DecorationImage(
                            image: NetworkImage(
                                url.toString(),
                            ),
                          fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]),
            const SizedBox(height: 8.0),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              status,
              style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
                child: InkWell(
                  onTap: ()=>{
                    if(status == 'Away'){
                      alert(context, title: const Text('Sorry Teacher Not Available \n Please try again later !'))
                    }
                    else{
                      alert(context, title: const Text('Teacher is currently available'))
                    }
                  },
                  child: Container(
                      width: 175.0,
                      decoration: BoxDecoration(
                        color: status == 'Away' ? Colors.grey: Colors.green,
                        borderRadius: const BorderRadius.only
                          (
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)
                        ),
                      ),
                      child: Center(
                        child: const Text('Request',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Quicksand'
                          ),
                        ),
                      )
                  ),
                )
            )
          ],
        ),
        margin: cardIndex.isEven? const EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):const EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}

