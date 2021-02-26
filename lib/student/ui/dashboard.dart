import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:utransit_app/student/colors.dart';
import 'package:utransit_app/student/ui/login_screen.dart';


class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: appBarBackgroundColor,
                child: Container(
                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 35.0),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.power_settings_new, color: Colors.white, size: 30.0,),
                              onPressed: (){
                                Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) => Login()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage('images/man.jpg'),
                            backgroundColor: appBarBackgroundColor,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Balance: GHc 0.00',
                                  style: TextStyle(
                                    fontFamily: 'Mulish',
                                    fontSize: 17.0,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                GestureDetector(
                                  onTap: (){
                                    // Navigator.of(context).push(
                                    //   MaterialPageRoute(builder: (context) => Trips()),
                                    // );
                                  },
                                  child: Text(
                                    'No. of Trips: 5',
                                    style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontSize: 17.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontSize: 17.0,
                                      color: Colors.white
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Text(
                                  'Michael Doe',
                                  style: TextStyle(
                                      fontFamily: 'Mulish',
                                      fontSize: 30.0,
                                      color: Colors.white
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (context) => QrCode()),
                          // );
                        },
                        child: Card(
                          color: Color(0xFFE1F8E6),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Center(
                                child: Text(
                                  'Display Code',
                                  style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 25.0,
                                    color: Color(0xFF003B32),
                                  ),
                                ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      width: double.infinity,
                      child: GestureDetector(
                        onTap: (){
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(builder: (context) => LoadFunds()),
                          // );
                        },
                        child: Card(
                          color: Color(0xFFE1F8E6),
                          child: Padding(
                            padding: const EdgeInsets.all(40.0),
                            child: Center(
                              child: Text(
                                'Load Funds',
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: 25.0,
                                  color: Color(0xFF003B32),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
