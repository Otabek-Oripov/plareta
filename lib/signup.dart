import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/servise/auth.dart';
import 'package:myapp/signinpage.dart';

class MyWidget extends StatefulWidget {
  static String id = 'MyWidget';
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1009555448.
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();

  void signUpUser() {
    String name = _emailController.text.trim().toString();
    String password = _passwordController.text.trim().toString();
    String email = _nameController.text.trim().toString();

    Authservise.signUpUser(email, password, name)
        .then((value) => {responsesignUp(value!)});
  }

  responsesignUp(User firebaseUser) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
      return Homepage();
    }));
  }

  bool isActive = true;

  void toggleActive() {
    setState(() {
      isActive = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 1000,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://static.wixstatic.com/media/abdec4_4c0d4aebb348461598e1c040c6e6028d~mv2.jpg/v1/fill/w_320,h_800,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/abdec4_4c0d4aebb348461598e1c040c6e6028d~mv2.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Registration',
            style: TextStyle(
              color: Colors.blueAccent.shade100,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: isActive
                      ? [Colors.red, Colors.red.withOpacity(0.1)]
                      : [Colors.green, Colors.grey.withOpacity(0.1)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: isActive
                        ? Colors.red
                        : Color.fromARGB(255, 12, 240, 19))),
            child: TextField(
              onTap: toggleActive,
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
                icon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: isActive
                      ? [Colors.red, Colors.red.withOpacity(0.1)]
                      : [Colors.green, Colors.green.withOpacity(0.1)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: isActive
                        ? Colors.red
                        : const Color.fromARGB(255, 14, 245, 22))),
            child: TextField(
              onTap: toggleActive,
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
                icon: Icon(
                  Icons.password,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            margin: EdgeInsets.all(10),
            height: 50,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
                gradient: LinearGradient(
                  colors: isActive
                      ? [
                          const Color.fromARGB(255, 214, 20, 6),
                          Colors.red.withOpacity(0.1)
                        ]
                      : [Colors.green, Colors.green.withOpacity(0.1)],
                ),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: isActive
                        ? Colors.red
                        : const Color.fromARGB(255, 17, 245, 24))),
            child: TextField(
              onTap: toggleActive,
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'name',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
                icon: Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SignInPage.id);
                },
                child: Text(
                  'Sign In',
                  style: TextStyle(
                      color: isActive ? Colors.red : Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              InkWell(onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return Homepage();
                }));
              },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: isActive
                          ? Colors.red
                          : Color.fromARGB(255, 13, 241, 62),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: IconButton(
                    onPressed: toggleActive,
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

 
}
