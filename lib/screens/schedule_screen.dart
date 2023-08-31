import 'package:flutter/material.dart';

import '../widgets/upcoming.dart';
class Schedule_Screen extends StatefulWidget {
  const Schedule_Screen({super.key});

  @override
  State<Schedule_Screen> createState() => _Schedule_ScreenState();
}

class _Schedule_ScreenState extends State<Schedule_Screen> {
  int _buttonIndex = 0;
  final _ScheduleWidget = [
    //Upcoming Widgets
    UpcomingSchedule(),
    //Completed Widgets
    Container(),
    //Canceled Widgets
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text("Schedule",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Color(0xfff4F6FA),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0? Color(0xff7165D6):Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Upcoming",
                      style: TextStyle(
                      color: _buttonIndex == 0? Colors.white:Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1? Color(0xff7165D6):Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Completed",
                      style: TextStyle(
                      color: _buttonIndex == 1? Colors.white:Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2? Color(0xff7165D6):Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Canseled",
                      style: TextStyle(
                        color: _buttonIndex == 2? Colors.white:Colors.black38,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            _ScheduleWidget[_buttonIndex],
        ],
      ),
    );
  }
}