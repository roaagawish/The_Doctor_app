import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_app/screens/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup_Screen extends StatefulWidget {
  const Signup_Screen({super.key });


  @override
  State<Signup_Screen> createState() => _Signup_ScreenState();
}

class _Signup_ScreenState extends State<Signup_Screen> {

  bool passToggle = true;
  bool confirmpassToggle = true;
  var formerKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();

  String? userEmail = FirebaseAuth.instance.currentUser!.email;

  Future addUser({
    required String name ,
    required String phone ,
    required String email ,
    required String age ,
    required String gender
  }) async {

    FirebaseFirestore firestore = FirebaseFirestore.instance;

    await firestore.collection('users').doc(userEmail).set({
      'name' : name ,
      'phone' : phone ,
      'email' : email,
      'age' : age ,
      'gender' : gender,
    });
  }

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
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset('assets/images/doctors.jpg'),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Name must not be empty";
                    } return null ;},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Full Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Phone Number must not be empty";
                    } else if (value.length < 11) {
                      return " Phonne Number must be 11 digit";
                    }
                     return null ;
                    },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone Number",
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
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
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.alternate_email),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                      return "Password must be at least 6 characters" ;
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
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
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: confirmPasswordController ,
                  obscureText: confirmpassToggle ? true : false,
                  obscuringCharacter: "*",
                  validator: (value) {
                    if (value!.isEmpty)  {
                      return "Password must not be empty";
                    } else if (value != passwordController.text) {
                      return "Password does not match" ;
                    }
                    return null ;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Confirm Password",
                    prefixIcon: Icon(Icons.lock_open),
                    suffixIcon: InkWell(
                      onTap: () {
                        confirmpassToggle = !confirmpassToggle ;
                        setState(() {});
                      },
                      child: confirmpassToggle
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: ageController,
                  keyboardType: TextInputType.number,
                  // validator: (value) {
                  //   if (value!.isEmpty)  {
                  //     return "Name must not be empty";
                  //   } return null ;},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Age",
                    prefixIcon: Icon(Icons.calendar_month_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: TextFormField(
                  controller: genderController,
                  keyboardType: TextInputType.name,
                  // validator: (value) {
                  //   if (value!.isEmpty)  {
                  //     return "Name must not be empty";
                  //   } return null ;},
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Gender",
                    prefixIcon: Icon(Icons.male),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff7165D6) ),
                  child: MaterialButton( onPressed:  () async {
                    if (formerKey.currentState!.validate())  {
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                          email: emailController.text,
                          password: passwordController.text
                      ).then((value) {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Login_Screen()),);
                      }).catchError((error) {
                        print(error.toString());
                      });
                      addUser(
                        name : nameController.text ,
                        phone : phoneController.text ,
                        email : emailController.text,
                        age : ageController.text ,
                        gender : genderController.text ,);
                    }
                  } ,
                    child:const Text ("Create Account" , style: TextStyle(color: Colors.white,fontSize: 20)),),
                ),

              ),
              //SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have account?",
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
                            builder: (context) => Login_Screen(),
                          ));
                    },
                    child: Text('Log In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff7165D6),
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}

