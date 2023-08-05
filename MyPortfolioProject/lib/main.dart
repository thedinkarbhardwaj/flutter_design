import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: MyPortfolio(),
    debugShowCheckedModeBanner: false
    ,
  ));
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Portfolio", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,),)),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/back.jpg"),
            fit: BoxFit.fill
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 30, backgroundImage: AssetImage("images/profile.png"),),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          child: const Text("Dinkar Bhardwaj", style: TextStyle(color: Colors.black, fontSize: 20,
                          fontWeight: FontWeight.bold), ),
                        ),
                        const Text("Android & Flutter Developer", style: TextStyle(color: Colors.lightBlue, fontSize: 15,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,0,0),
                    child: Row(
                      children: const [
                        Icon(Icons.confirmation_num_sharp),
                        Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text("School Name", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,0,0),
                    child: Row(
                      children: const [
                        Icon(Icons.confirmation_num_sharp),
                        Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text("School Name", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,0,0),
                    child: Row(
                      children: const [
                        Icon(Icons.confirmation_num_sharp),
                        Padding(
                          padding: EdgeInsets.only(left: 18.0),
                          child: Text("School Name", style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 60,),
                  const Text("Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, gener",
                  style: TextStyle(color: Colors.white,letterSpacing: 3),),
                  SizedBox(height: 60,),
                  const Text("Created by dinkr", style: TextStyle(fontFamily: "Schyler", fontSize: 20))

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


