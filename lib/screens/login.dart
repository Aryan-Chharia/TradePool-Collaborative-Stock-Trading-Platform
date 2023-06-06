import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'register.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _Login();
}
class _Login extends State<Login> {
  final _todoController = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(),
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [

                      TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Enter your email here...',
                            border: InputBorder.none),
                      ),
                      TextField(
                        controller: _todoController,
                        decoration: InputDecoration(
                            hintText: 'Enter your password here...',
                            border: InputBorder.none),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Don\'t have an account?   ',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  Register()),);
                            },
                            child: Text(
                              'Create Account',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

}