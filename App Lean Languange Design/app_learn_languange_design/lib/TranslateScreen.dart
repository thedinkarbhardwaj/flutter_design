import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';

class TranslateScreen extends StatefulWidget {
  const TranslateScreen({Key? key}) : super(key: key);

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: HexColor("#1992e0"),
        child: Column(
            children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Lessons",
            textAlign: TextAlign.center,
          ),
          trailing: Icon(Icons.linear_scale_outlined),
      ),
        ),
      Stack(
        alignment: Alignment.topCenter,
        children:[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 330,

            // color: Colors.green,
          ),
        Container(
        decoration: BoxDecoration(
            color: Colors.redAccent,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(120),bottomLeft: Radius.circular(120))
        ),
          width: MediaQuery.of(context).size.width,
        height: 260,

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Translate These Phrases to English",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      ),
      Positioned(
        bottom: -20,
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: 240,
          // color: Colors.limeAccent,
          child: ListView(children: [
            CarouselSlider(
              items: [
                Container(

                  height: 300,
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/b/beautiful-sunset-over-water-tree-silhouette-nature-landscape-amazing-orange-yellow-sky-night-scene-wallpaper-birds-flying-154424473.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/b/spectrum-sunset-silhouette-background-trees-beautiful-color-sky-135233556.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://imgd-ct.aeplcdn.com/370x208/n/cw/ec/107543/vitara-brezza-2022-exterior-right-front-three-quarter.jpeg?isig=0&q=75"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://stimg.cardekho.com/images/carexteriorimages/630x420/Maruti/Brezza/8679/1656579833096/front-left-side-47.jpg?impolicy=resize&imwidth=420"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
                pageSnapping: true,

              ),
            )
          ]),
        ),
      ),
    ],
    ),
              Container(
                margin: EdgeInsets.all(30),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Enter your Text",
                      hintStyle: TextStyle(
                          color: Colors.black
                      ),
                      labelStyle: TextStyle(color: Colors.blue,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black,width: 2,
                          )

                      )
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return "";
                    }
                    return null;
                  },
                ),
              ),
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.only(top:15, right: 20,left: 5),
                child: FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.arrow_forward, size: 60,),
                  backgroundColor: Colors.green,
                ),
              ),

    ]),

    ),
    );
  }
}
