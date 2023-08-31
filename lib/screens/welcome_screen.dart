import 'package:doctor_app/screens/signup_screen.dart';
import 'package:doctor_app/widgets/navbar_roots.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(
                    // builder: (context) => Navbar_Roots(),
                    // )
                    // );
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => Navbar_Roots()));
                  },
                  child: const Text(
                    'SKIP',
                    style: TextStyle(fontSize: 20, color: Color(0xff7165D6)),
                  )),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/doctors.jpg'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Doctors Appointment',
              style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff7165D6),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                 wordSpacing: 2
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Appoint Your Doctor',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login_Screen(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup_Screen(),
                          ));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
