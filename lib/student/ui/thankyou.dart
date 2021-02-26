import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/const.dart';
import 'package:utransit_app/student/my_button.dart';
import 'package:utransit_app/student/ui/login_screen.dart';

class ThankYou extends StatefulWidget {
  @override
  _ThankYouState createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'Thank You',
          style: TextStyle(
              fontFamily: 'Mulish'
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: loginContainerSize,
          child: Column(
            children: [
              Text(
                'Thank you for contacting support your message has been sent.',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 17.0,
                ),
              ),
              SizedBox(height: 50.0,),
              Container(
                width: double.infinity,
                child: MyButton(
                  onpressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  label: 'CONTINUE',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
