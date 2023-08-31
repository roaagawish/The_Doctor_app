import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class Chat_Sample extends StatelessWidget {
  const Chat_Sample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipper(MessageType.receive),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xffE1E1E2),
              ),
              child: Text(
                "Hello, what i can do for you, you can book appointment directly",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 80),
            child: ClipPath(
              clipper: LowerNipMessageClipper(MessageType.send),
              child: Container(
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 25),
                decoration: BoxDecoration(
                  color: Color(0xff7165D6),
                ),
                child: Text(
                  "Hello Doctor, Are You There",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
