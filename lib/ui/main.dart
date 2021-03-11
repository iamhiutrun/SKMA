import 'package:SKMA/ui/screens/schedule_page.dart';
import 'package:SKMA/ui/screens/singin_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => SignInPage(),
        '/schedule': (context) => SchedulePage(),
      },
      initialRoute: '/login',
    )
  );
}



