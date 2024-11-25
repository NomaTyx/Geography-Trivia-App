import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geography_trivia_app/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:geography_trivia_app/controllers/auth_services.dart';

const List<String> regionList = <String>['Africa', 'Asia', 'Europe', 'North America', 'Oceania', 'South America', 'Antarctica'];

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String name = '';
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 90.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/toge.jpg'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            const Center(
              child: Text(
                'Hi! Please enter your name.',
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            TextField(
              decoration: InputDecoration(hintText: "Name"),
              onChanged: (String value) {
                name = value;
              },
            ),
            Divider(
              height: 30,
              color: Colors.grey[800],
            ),
            ElevatedButton(
                onPressed: () => {
                  if(name != '') {
                    Get.to(RegionScreen())
                  }
                  else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('I\'m sure you have a name'),
                        content: const Text('If you don\'t have a name, come up with one.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                  }
                },
                child: Text("Done"))
          ],
        ),
      ),
    );
  }

  //gets device ID by manufacturer (which are supposedly unique), appends @gmail.com, and uses those as a username and password.
  void AuthenticateUser() {
    // ?? means returns the left value unless it's null, in which case it returns the right value.
    //make sure this line actually works
    AuthServices authServices = Get.put(AuthServices()) ?? Get.find<AuthServices>();

    try {
      authServices.logIn("${authServices.deviceID}@gmail.com", "${authServices.deviceID}123");
    } catch (e) {
      authServices.signUp("${authServices.deviceID}@gmail.com", "${authServices.deviceID}123");
    }
  }
}

class RegionScreen extends StatelessWidget {
  const RegionScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold();
  }
}