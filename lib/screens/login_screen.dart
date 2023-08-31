import 'package:doctor_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../widgets/navbar_roots.dart';


class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});
  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {

  bool passToggle = true;
  var formerKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key : formerKey,
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/images/doctors.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: emailController ,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Email address must not be empty";
                    } else if (!value.contains('@')) {
                      return "Unveiled email address , must contains @ symbol";
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText :'Email Address',
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
              ),
              //SizedBox(height: 0,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: passwordController ,
                  obscureText: passToggle ? true : false,
                  obscuringCharacter: "*",
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Password must not be empty";
                    } else if (value.length < 6) {
                      return "Password is too short" ;
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText : 'Password',
                      prefixIcon: Icon(Icons.lock_open),
                      suffixIcon: InkWell(
                        onTap: () {
                          passToggle = !passToggle ;
                          setState(() {});
                        },
                        child: passToggle
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        ),

                      ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child : Container(
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff7165D6)),
                  child: MaterialButton(onPressed:  () async {
                    if (formerKey.currentState!.validate())  {
                      FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text)
                          .then((value) {
                            Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Navbar_Roots()));
                      }).catchError((error) {
                        print(error.toString());
                      });
                    }
                  } ,
                    child:const Text ("Log In" , style: TextStyle(color: Colors.white,fontSize: 25)),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have any account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup_Screen(),
                          ));
                    },
                    child: Text('Create account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff7165D6),
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
