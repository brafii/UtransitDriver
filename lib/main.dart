import 'package:flutter/material.dart';
import 'package:utransit_app/student/ui/dashboard.dart';
import 'package:utransit_app/student/ui/login_screen.dart';
import 'package:utransit_app/student/ui/support_page.dart';
import 'package:utransit_app/student/ui/thankyou.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        'support': (context) => Support(),
        'thanks': (context) => ThankYou(),
        'dashboard': (context) => Dashboard(),
      },
    );
  }
}

