import 'package:doctor_app/screens/appointment_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/UserModel.dart';

class Home_Screen extends StatefulWidget {
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  UserModel? userData;
  DataModel? dataModel;
  bool loading = true;

  void DoUserModelProvider() {
    UserModelProvider().getUserData().then((user) {
      setState(() {
        userData = user;
      });
    });
  }

  void DoDataModelProvider() {
    DataModelProvider().getData().then((user) {
      setState(() {
        dataModel = user;

      });
    });
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    DoUserModelProvider();
    DoDataModelProvider();
    loading = false;
  }

  List symptoms = [
    "Temperature",
    "Snuffle",
    "Fever",
    "Couch",
    "Gold",
  ];

  List imgs = [
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return loading
        ? Center(child: CircularProgressIndicator())
        : userData != null
            ? SingleChildScrollView(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Hello ${userData!.name!} ,",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              )),
                          CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage('assets/images/doctor1.jpg'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Color(0xff7165D6),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 4,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xff7165D6),
                                    size: 35,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Clinic Visit",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Make an appointment",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 4,
                                  ),
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff0EEFA),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    Icons.home_filled,
                                    color: Color(0xff7165D6),
                                    size: 35,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Home Visit",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Call the doctor home",
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'What are your symptoms?',
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: symptoms.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              decoration: BoxDecoration(
                                  color: Color(0xfff4F6FA),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 6,
                                      spreadRadius: 4,
                                    ),
                                  ]),
                              child: Center(
                                child: Text(
                                  symptoms[index],
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        "Popular Doctors",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Appointment_Screen(img: "${imgs[index]}",),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.all(
                                10,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage("${imgs[index]}"),
                                  ),
                                  Text(
                                    userData != null
                                        ? dataModel!.name!
                                        :
                                    "Failed to load data",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    // userData != null
                                    //     ? dataModel!.specialty!
                                    //     :
                                    "Failed to load data",
                                    style: TextStyle(
                                      //fontSize: 10,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        userData != null
                                            ? dataModel!.rating!
                                            :
                                        "Failed to load data",
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ],
                ),
              )
            : Center(
                child: Text("Failed to load data"),
              );
  }
}
