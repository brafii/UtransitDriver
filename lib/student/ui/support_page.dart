import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/const.dart';
import 'package:utransit_app/student/my_button.dart';
import 'package:utransit_app/student/ui/thankyou.dart';

class Support extends StatefulWidget {
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBackgroundColor,
        title: Text(
          'Support',
          style: TextStyle(
            fontFamily: 'Mulish'
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: loginContainerSize,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Student Number',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: buttonColor,
                      width: 0.9,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile Number',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: buttonColor,
                      width: 0.9,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextFormField(
                minLines: 10,
                maxLines: 15,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Statement',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: buttonColor,
                      width: 0.9,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              Container(
                width: double.infinity,
                child: MyButton(
                  onpressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ThankYou()),
                    );
                  },
                  label: 'SUBMIT',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
