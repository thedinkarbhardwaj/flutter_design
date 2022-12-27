import 'package:flutter/material.dart';
import 'package:food_designing_ui/SignupScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreenFile extends StatefulWidget {
  const IntroductionScreenFile({Key? key}) : super(key: key);

  @override
  State<IntroductionScreenFile> createState() => _IntroductionScreenFileState();
}

class _IntroductionScreenFileState extends State<IntroductionScreenFile> {
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> getpages = [

      PageViewModel(
          image: Image.network("https://raw.githubusercontent.com/faysalneowaz/splashscreen/main/assets/images/designf.jpg",
          height: 300,),
          title: "Delivery to your home",
          body: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
          decoration: PageDecoration(
            pageColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.green, fontSize: 20,fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.w400),
          ),

      ),

      PageViewModel(
          image:Image.network("https://raw.githubusercontent.com/faysalneowaz/splashscreen/main/assets/images/designs.jpg",
          height: 300,),
          title: "Prepared by Experts",
          body: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. ",
          decoration: PageDecoration(

              pageColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.green, fontSize: 20,fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.w400),

          )
      ),
      PageViewModel(
          image:Image.network("https://raw.githubusercontent.com/faysalneowaz/splashscreen/main/assets/images/designt.jpg",
          height: 300,),
          title: "Enjoy with Everyone",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.",
          decoration: PageDecoration(

              pageColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.green, fontSize: 20,fontWeight: FontWeight.bold),
              bodyTextStyle: TextStyle(color: Colors.green, fontSize: 15,fontWeight: FontWeight.w400),

              // boxDecoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(20)
              // )

          )
      ),
    ];


    return Scaffold(

        body: Column(
          children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 20),
            child: Text("Food Express", style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.green),
            textAlign: TextAlign.center,),
          ),
            Expanded(
              child: IntroductionScreen(
                controlsPadding: EdgeInsets.only(left: 0,bottom: 20),
                pages: getpages,
                autoScrollDuration: 6000,
                showNextButton: false,
                done: ElevatedButton(
                  child: Text("Done", style: TextStyle(fontSize: 16,
                      letterSpacing: 3,
                      color: Colors.white),),
                  onPressed: (){
                    Sharedpref();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))

                      )
                  ),
                ),
                onDone: () {
                },

                skip: ElevatedButton(
                  child: Text("Skip", style: TextStyle(fontSize: 16,
                  letterSpacing: 3,
                  color: Colors.white),),
                  onPressed: (){
                    Sharedpref();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignupScreen() ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20))

                    )
                  ),
                ),
                onSkip: (){

                },
                showSkipButton: true,

              ),
            ),
          ],
        )
    );
  }

  void Sharedpref() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("introduction_screen_show", true);
  }
}
