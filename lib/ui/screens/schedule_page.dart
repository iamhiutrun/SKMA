import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SchedulePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SchedulePage> {
  CalendarController _controller;
  TextStyle dayStyle(FontWeight fontWeight) {
    return TextStyle(color: Color(0xff30384c), fontWeight: fontWeight);
  }

  Container taskList(String title, String description, IconData iconImg, Color iconColor){
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Icon(
            iconImg,
            color: iconColor,
            size: 30,
          ),
          Container(
            padding: EdgeInsets.only(left:10, right: 10),
            width: MediaQuery.of(context).size.width*0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TableCalendar(
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarController: _controller,
                calendarStyle: CalendarStyle(
                  weekdayStyle: dayStyle(FontWeight.normal),
                  weekendStyle: dayStyle(FontWeight.normal),
                  selectedColor: Color(0xff30374b),
                  todayColor: Color(0xff30374b),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                    weekdayStyle: TextStyle(
                        color: Color(0xff30384c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    weekendStyle: TextStyle(
                        color: Color(0xff30384c),
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleTextStyle: TextStyle(
                        color: Color(0xff30384c),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    leftChevronIcon: Icon(
                      Icons.chevron_left,
                      color: Color(0xff30384c),
                    ),
                    rightChevronIcon: Icon(
                      Icons.chevron_right,
                      color: Color(0xff30384c),
                    )),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: Color(0xff30384c),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text(
                            "Today",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        taskList("Task 1", "Description of task 1 to be updated in this area", CupertinoIcons.check_mark_circled_solid,Color(0xff00cf8c)),
                        taskList("Task 2", "Description of task 2 to be updated in this area",CupertinoIcons.clock_solid,Color(0xffff9e00)),
                        taskList("Task 3", "Description of task 3 to be updated in this area",CupertinoIcons.check_mark_circled_solid,Color(0xff00cf8c)),
                      ],
                    ),
                    Positioned(
                      bottom: 0,
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                colors:[
                                  Color(0xff30384c).withOpacity(0),
                                  Color(0xff30384c)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ]
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      right: 20,
                      child: Container(
                        padding: EdgeInsets.all((20)),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffb038f1),
                        ),
                        child: Text("+", style: TextStyle(color: Colors.white, fontSize: 25),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}