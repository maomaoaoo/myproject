import 'dart:math';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});
    String text = 'this is my text';


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String text = " ";
  int num =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/a.png'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 50, 0),
                    child: Text(
                      'หมายเลขโทรศัพท์',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 50, 0),
                    child: Text(
                      'รหัสผ่าน',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border:
                          OutlineInputBorder(borderSide: BorderSide(width: 1))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: TextButton(
                        onPressed: () => register(), 
                        child: const Text('ลงทะเบียนใหม่')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, top: 20),
                    child: FilledButton(
                        onPressed: login, 
                        child: const Text('เข้าสู่ระบบ')),

                       
                  ),
                ],
              ),
              Text(text)
            ],
            
          ),
        ));
  }

  void register() {
    
    text = 'Login time ';
  }
  

  void login() {

    setState(() {
      num++;
      text = 'Login time $num';
    });
  }
}
 

