/* Authored by: Myra Abilay
Company: ThriftyPal
Project: E-thrift App
Feature: [ETA-001] SPLASH
Description: user, you're seeking to register to gain access to the services or features 
offered by a platform, application, or organization. This process typically entails providing 
personal information and creating login credentials, like a username and password, to set up
 your account.
 */

import 'package:flutter/material.dart';
import 'SIGN_IN.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => GetStarted(),
        '/SIGN_in': (context) => SIGN_in(),
      },
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
    );
  }
}

class GetStarted extends StatelessWidget {
  final String title;
  const GetStarted({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              alignment: Alignment.topCenter,
              child: Image(image: AssetImage('images/LOGO.jpg')),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 183.0, // Button width
                height: 65.0, // Button height
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/SIGN_in'); // Button onPressed action
                  },
                  child: Text('GET STARTED'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3CA77D),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
