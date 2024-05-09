/* Authored by: Myra Abilay
Company: ThriftyPal
Project: E-thrift App
Feature: [ETA-002] REGISTER
Description: The sign-in process is your digital gateway to accessing your 
account's personalized features and services on a platform. It involves entering 
your credentials, usually your username or email address along with your password,
 to unlock access to your account.
 */

import 'package:flutter/material.dart';
import 'SIGN_IN.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/Register': (context) => SIGN_in(),
        },
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight:
                150, // Increase toolbar height to make space for arrow
            toolbarOpacity: 0.5,
            leadingWidth: 20,
            leading: Container(
              // Wrap IconButton in a Container to customize position
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                  top: 30), // Adjust top padding to position the arrow
              child: IconButton(
                icon: const Icon(Icons.arrow_back,
                    color: Colors.white), // Set arrow color to white
                onPressed: () {
                  Navigator.of(context).pop('/SIGN_in');
                },
              ),
            ),
            backgroundColor: Color(0x00e1aeae), // Transparent background
            elevation: 0,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff7FECC2),
                    Color(0xff268A63),
                    Color(0xff52A585),
                  ],
                  stops: [0.0, 0.0, 0.2],
                ),
              ),
            ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Let’s get you Registered!.",
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          body: Expanded(
            child: Container(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), // Use OutlineInputBorder for outlined border
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), // Use OutlineInputBorder for outlined border
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), // Use OutlineInputBorder for outlined border
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      20.0)), // Use OutlineInputBorder for outlined border
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SizedBox(
                          width: 337.0, // Button width
                          height: 51.0, // Button height
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff000000),
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context,
                                '/SIGN_in'); // Handle forgot password action
                          },
                          child: Text(
                            'Already have an account?',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xff4364A4),
                            ),
                          ),
                        ),
                      ])),
            ),
          ),
        ));
  }
}
// Button onPressed action
