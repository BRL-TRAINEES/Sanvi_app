import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
         // ignore: non_constant_identifier_names
         builder: (context,Snapshot){
          if(Snapshot.hasData){
            return const Home();
          }
          else
          {
            return const Login();
          }
      }
        ),
    );
  }
}