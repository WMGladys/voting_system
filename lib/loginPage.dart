import 'package:flutter/material.dart';
import 'package:voting_system/votingPage.dart';
import 'package:voting_system/results.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  //list to hold user inputs
  List<String> inputList = [];
  TextEditingController textEditingController = TextEditingController();
  bool hasItem = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Easiest and Safest ',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Way To ',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  Text(
                    'Vote',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 40),

                  //TextField
                  TextField(

                    controller: textEditingController,
                    decoration: InputDecoration(labelText: 'Enter your ID'),
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(inputList.contains(textEditingController.text)){
                          hasItem = true;
                        }else{
                          inputList.add(textEditingController.text);
                          hasItem = false;
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        )
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height:30),

                  //button
                  if(hasItem)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => VotingPage()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )
                            ),
                            child: const Text(
                              'See Results',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),

                    )
                  else
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => VotingPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              )
                          ),
                          child: const Text(
                            'Start',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                    )
                ],
                  ),
              ),
          ),
      );
  }
}


//_ () {} : $ <> @ &