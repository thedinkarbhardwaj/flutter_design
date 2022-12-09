import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:onboarding_screen/Dashboard.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'onboarding',
      routes: {
        'onboarding':(context) => OnboardingScreen(),
        'DashoardScreen': (context) => DashboardScreen()
      },
    )
  );
}

class OnboardingScreen extends StatefulWidget {

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    List<PageViewModel> getpages = [

      PageViewModel(
        image: Image.asset("assets/img1.png", height: 300,),
        title: "Welcome to the world",
        body: "Contact with us",
        decoration: PageDecoration(
          pageColor: Colors.blueAccent,

        )
      ),

      PageViewModel(
        image:Image.asset("assets/img2.png", height: 300),
        title: "OnBoarding Screen 2",
        body: "Description 2",
        decoration: PageDecoration(

          boxDecoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(20)
          )

        )
      ),
      PageViewModel(
        title: "Title of custom body page",
        bodyWidget: Container(
          margin: EdgeInsets.only(top: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Click on "),
              Icon(Icons.edit),
              Text(" to edit a post"),
            ],
          ),
        ),
        image:  Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 15),
                child: Image.asset("assets/img3.png"))
        )
      ),
      ];


    return Scaffold(
       body: IntroductionScreen(
         pages: getpages,
         showNextButton: false,
         done: const Text("Done"),
         onDone: () {
           MotionToast.success(
               title:  Text("Success Motion Toast"),
               description:  Text("This is a desc")
           ).show(context);


          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen()));

           },

         skip: const Text("Skip"),
         onSkip: (){

           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DashboardScreen() ));
         },
         showSkipButton: true,

       )
    );
  }
}

