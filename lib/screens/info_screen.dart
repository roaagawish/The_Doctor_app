import 'package:flutter/material.dart';
class Info_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Developers Info",
            style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
            ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/images/dev1.jpg"),
                              ),
                        title: Text(
                          "Yara Afifi",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      //SizedBox(height: 5,),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "CSE student at Zagazig university",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.email,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "yaraafifi106@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.phone,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "01015287430",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/images/dev2.jpg"),
                              ),
                        title: Text(
                          "Sohila Ahmed",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      //SizedBox(height: 5,),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "CSE student at Zagazig university",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.email,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "sohilaf321@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.phone,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "01026444636",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/images/dev3.jpg"),
                              ),
                        title: Text(
                          "Roaa Ayman",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Divider(
                          thickness: 1,
                          height: 20,
                        ),
                      ),
                      //SizedBox(height: 5,),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.person,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "CSE student at Zagazig university",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.email,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "roaa.ayman.mail@gmail.com",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade100, shape: BoxShape.circle),
                          child: Icon(
                            Icons.phone,
                            color: Colors.deepPurple,
                            size: 20,
                          ),
                        ),
                        title: Text(
                          "01092045572",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                        ],
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}