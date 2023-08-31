import 'package:doctor_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Introduction_Screen extends StatelessWidget {
  Introduction_Screen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Find Doctor & Get Appointment',
        body:
            'You can take medical service to stay at home make sure a easy login and get your service',
        image: Center(
          child: Image.asset('assets/images/pic1.jpg',),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(color: Colors.black54,fontSize: 18)
        ),),
      PageViewModel(
        title: 'Tell Us Your Compliant',
        body: 'Ask all questions about any disease you suffer from, and we will provide you with the appropriate treatment',
        image: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Image.asset('assets/images/pic2.jpg',),
          ),
        ),
        decoration: PageDecoration(
            titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(color: Colors.black54,fontSize: 18)
        )),
        PageViewModel(
        title: 'Set The Schedule For Taking Medication Regularly',
        body:
            'With reminder system, you Can have peace of mind knowing that you are taking your medication as presscribed',
        image: Center(
          child: Image.asset('assets/images/pic3.jpg'),
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(color: Colors.black54,fontSize: 18)
        )),
    PageViewModel(
        title: 'Schedule Appointments With Expert Doctors',
        body:
            'Find experienced specialist doctors with expert ratings and reviews and book your appointment',
        image: Center(
          child: Image.asset('assets/images/pic4.jpg',),
        ),
        decoration: PageDecoration(
          titleTextStyle: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        bodyTextStyle: TextStyle(color: Colors.black54,fontSize: 18)
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medical App",style: TextStyle(fontSize: 25),),
        centerTitle: true,
        leading: Icon(Icons.medical_information),
        actions: [Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.medical_information),
        )],
        backgroundColor: Color(0xff7165D6),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: DotsDecorator(
            size: Size(10, 10),
            color: Color(0xff7165D6),
            activeSize: Size.square(15),
            activeColor: Colors.deepPurple,
          ),
          showDoneButton: true,
          done: Text(
            'Done',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff7165D6),
            ),
          ),
          showSkipButton: true,
          skip: Text(
            'Skip',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff7165D6),
            ),
          ),
          showNextButton: true,
          next: Icon(
            Icons.arrow_forward,
            size: 30,
            color:Color(0xff7165D6) ,
          ),
          onDone: () => onDone(context),
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('showHome', true);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Welcome_Screen()));
  }
}
