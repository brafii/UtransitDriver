import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/const.dart';
import 'package:utransit_app/student/my_button.dart';
import 'package:utransit_app/student/ui/dashboard.dart';
import 'package:utransit_app/student/ui/support_page.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  bool _secureText = true;

  String _data = "";

  _scan() async{
    await FlutterBarcodeScanner.scanBarcode(
        "#d41e37",
        "Cancel",
        true,
        ScanMode.QR
    ).then((value) => setState(() => _data = value));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: loginBackgroundColor,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: loginContainerSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('images/utransit-logo.png', width: 155.0,),
                  SizedBox(height: 15.0),
                  Text(
                    'Utransit Login',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(height: 100.0),
                  TextFormField(
                    cursorColor: buttonColor,
                  decoration: InputDecoration(
                    labelText: 'Username',
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
                  SizedBox(height: 20.0),
                  TextFormField(
                    cursorColor: buttonColor,
                    obscureText: _secureText,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            _secureText = !_secureText;
                          });

                        },
                        icon: Icon(
                          _secureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
                          color: buttonColor,
                        ),
                      ),
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
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    child: MyButton(
                        label: 'LOGIN',
                        onpressed: ()  => _scan(),
                    ),
                  ),
                  SizedBox(height: 100.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Having issues loggin?',
                        style: TextStyle(
                          fontFamily: 'Mulish',
                        ),
                      ),
                      SizedBox(width: 4.0,),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Support()),
                          );
                        },
                        child: Text(
                          'Contact Support',
                          style: TextStyle(
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF00D885),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
