import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class Chat_Screen extends StatelessWidget {
  const Chat_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xff7165D6),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr. Doctor Name",
                    overflow: TextOverflow.ellipsis ,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all (5),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 25,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 25,
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => Chat_Sample(),
        itemCount: 10,
        padding: EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 80),
      ),
      bottomSheet: Container(
        height: 65,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 2,
            blurRadius: 10,
          )
        ]),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(
                Icons.add,
                size: 30,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Icon(Icons.emoji_emotions_outlined,
                  size: 30, color: Colors.amber),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Container(
                alignment: Alignment.centerRight,
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Type something", border: InputBorder.none),
                ),
              ),
            ),
           // Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.send, size: 20, color: Color(0xff7165D6)),
            ),
          ],
        ),
      ),
    );
  }
}
