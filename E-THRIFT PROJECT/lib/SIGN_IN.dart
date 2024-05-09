/* Authored by: Myra Abilay
Company: ThriftyPal
Project: E-thrift App
Feature: [ETA-003] SIGN IN
Description: The sign-in process serves as your gateway to accessing your account 
and its personalized features or services on the platform. It involves entering your 
credentials, usually your username or email address along with your password, to unlock 
access to your account.
 */

import 'package:flutter/material.dart';
import 'main.dart';
import 'REGISTER.dart';

class SIGN_in extends StatelessWidget {
  const SIGN_in({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        toolbarHeight: 250, // Increase toolbar height to make space for arrow
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
              Navigator.of(context).pop('/GetStarted');
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'WELCOME BACK',
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Text(
              "Let's get you signed in.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: Expanded(
        child: Container(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
                    SizedBox(height: 15.0),
                    TextButton(
                      onPressed: () {
                        // Handle forgot password action
                      },
                      child: Container(
                        alignment:
                            Alignment.centerRight, // Align text to the left
                        child: Text(
                          'Forgot Password??',
                          style: TextStyle(
                            color: Color(0xffC65454),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
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
                    Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Register())); // Handle forgot password action
                      },
                      child: Text(
                        'Don’t have any account? Sign Up.',
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
