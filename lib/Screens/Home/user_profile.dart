import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helpdesk_2/models/customer.dart';
import 'package:helpdesk_2/screens/authentication/provider_widget.dart';

class UserProfile extends StatefulWidget {
  final Customer customer;
  UserProfile({this.customer});

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  //  Future<Customer> getCustomerData(BuildContext context) async {
  //   final uid = await Provider.of(context).auth.getCurrentUID();
  //   // Customer customer = Customer();

  //   DocumentSnapshot userData = await Firestore.instance
  //       .collection('userData')
  //       .document(uid)
  //       .collection("Personal Details")
  //       .document()
  //       .get();

  //   // customer.fr

  //   return Customer.fromMap(userData.data);
  // }

  @override
  Widget build(BuildContext context) {
    // print('7dsjalkfj     ${widget.customer.name}');

    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Helper's Profile",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color(0xff000000),
        elevation: 0.0,
        // actions: <Widget>[
        //   ListTile(
        //     title: Text(
        //     '${userData.displayName}',
        //       style: TextStyle(
        //         fontSize: 30,
        //       ),
        //     ),
        //     subtitle: Text(
        //       userData.email,
        //       style: TextStyle(fontSize: 30),
        //     ),
        //   ),
        // ]),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage(
                  'https://lh3.googleusercontent.com/-5axQsnH1ZuM/AAAAAAAAAAI/AAAAAAAAAAA/xAYbnZ7p5AM/s190-p/photo.jpg',
                ),
              ),
            ),
            Divider(
              color: Colors.grey[800],
              height: 60.0,
            ),
            Text(
              'Helper\'s Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ayush Sharma',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            // SizedBox(height: 30.0),
            // Text(
            //   'Last Seen',
            //   style: TextStyle(
            //     color: Colors.grey,
            //     letterSpacing: 2.0,
            //   ),
            // ),

            SizedBox(height: 30.0),
            Text(
              'Skill set',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Flutter, Public Speaking, People's skills, Guitar",

              // '8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  "example@gmail.com",
                  // 'chun.li@thenetninja.co.uk',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),

                SizedBox(width: 20.0),
              ],
            ),


            SizedBox(width: 20.0),
Text("\nIs Available?",
 style: TextStyle(
                color: Colors.amberAccent[200],
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 2.0,
              ),
            ),
                Switch(
                    value: false,
                    activeColor: Colors.white,
                hoverColor: Colors.black,
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.red,
                    onChanged: (bool state) {
                      print(state);
                    }),
          ],
        ),
      ),
    );
  }
}