import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {
    final user=FirebaseAuth.instance.currentUser;
    
      signout()async{
        await FirebaseAuth.instance.signOut();
      }
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("homepage"),),
        body: Center(
            child: Text('${user!.email}'),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (()=>signout()),
            child: const Icon(Icons.login_rounded)
        ),
        );
  }
}
  