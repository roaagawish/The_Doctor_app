
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/UserModel.dart';

class Appointment_Screen extends StatefulWidget {

  String? img;

  Appointment_Screen ({required this.img});

  @override
  State<Appointment_Screen> createState() => _Appointment_ScreenState();
}

class _Appointment_ScreenState extends State<Appointment_Screen> {


  DataModel? dataModel;
  bool loading = true;



  @override
  void initState() {
// TODO: implement initState
    super.initState();
    DataModelProvider().getData().then((user) {
      setState(() {
        dataModel = user;
        loading = false;
      });
    });
  }

  List imgs = [
    "assets/images/doctor1.jpg",
    "assets/images/doctor2.jpg",
    "assets/images/doctor3.jpg",
    "assets/images/doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xff7165D6),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : dataModel != null
              ? SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage:
                                        AssetImage(widget.img!),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                      dataModel != null
                                          ? dataModel!.name!
                                          :
                                      "Failed to load data",
                                    style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    // dataModel != null
                                    //     ? dataModel!.specialty!
                                    //     :
                                    "Failed to load data",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Color(0xff9F97E2),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          Icons.call,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Color(0xff9F97E2),
                                            shape: BoxShape.circle),
                                        child: Icon(
                                          CupertinoIcons.chat_bubble_text_fill,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height / 1.5,
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: 20,
                          left: 15,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "About Doctor",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "A doctor is someone who is experienced and certified to practice medicine to help maintain or restore physical and mental health.",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Reviews",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text(
                                  dataModel != null
                                      ? dataModel!.rating!
                                      :
                                  "Failed to load data",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "(124)",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff7165D6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                //spacer align next widget to the end of row
                                Spacer(),
                                TextButton(
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(
                                      // builder: (context) => Navbar_Roots(),
                                      // )
                                      // );
                                    },
                                    child: const Text(
                                      'See all',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff7165D6),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )),
                              ],
                            ),
                            SizedBox(
                              height: 160,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 4,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.all(
                                        10,
                                      ),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Color(0xfff4F6FA),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black12,
                                              blurRadius: 4,
                                              spreadRadius: 2,
                                            ),
                                          ]),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.4,
                                        child: Column(
                                          children: [
                                            ListTile(
                                              leading: CircleAvatar(
                                                radius: 25,
                                                backgroundImage: AssetImage(
                                                    "${imgs[index]}"),
                                              ),
                                              title: Text(
                                                dataModel != null
                                                    ? dataModel!.name!
                                                    :
                                                "Failed to load data",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              subtitle: Text("1 day ago"),
                                              trailing: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  Text(
                                                    dataModel != null
                                                        ? dataModel!.rating!
                                                        :
                                                    "Failed to load data",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Text(
                                                "Many thanks to Dr. Dear he is a great and professional doctor.",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color(0xffF0EEFA),
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.location_on,
                                  color: Color(0xff7165D6),
                                  size: 30,
                                ),
                              ),
                              title: Text(
                                  // dataModel != null
                                  //     ? dataModel!.location!
                                  //     :
                                  "Failed to load data",
                                style: TextStyle(
                                  //color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle:
                                  Text("Adress line of the  medical center,"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Center(
                  child: Text("Failed to load data"),
                ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 120,
        decoration: BoxDecoration(color: Color(0xfff4F6FA), boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consultation Price",
                  style: TextStyle(color: Colors.black54, fontSize: 16),
                ),
                Text(
                   "\$${
                        dataModel != null
                      ? dataModel!.fees!
                      :
                      "Failed to load data"}",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xff7165D6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Book Appointment",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
