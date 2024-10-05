import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
    home: Homepage(),
  )
  );
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  get child => null;
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding :const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors:[
              Color.fromARGB(255, 93, 85, 246),
              Color.fromARGB(255, 88, 101, 216),
              Color.fromARGB(57, 110, 114, 233),
            ]
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80,),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
              Text("Welcome back",style:TextStyle(color: Colors.white , fontSize: 40),),
              SizedBox(height: 20,),
              Text("Login",style:TextStyle(color: Colors.white , fontSize: 20),),
                  ],
                ),
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50),bottomLeft: Radius.circular(50),bottomRight:Radius.circular(50) ),
                    

                    ),
                     child:Padding(
                         padding: const EdgeInsets.all(30),
                   child: Column(
                    children: <Widget>[
                      // ignore: avoid_unnecessary_containers
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          
                          
                        ),
                       child: Column(
                        children: <Widget>[
                          Container(
                           
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child: const TextField(
                        decoration: InputDecoration(
                          hintText: "email",
                          hintStyle: TextStyle(color:Colors.grey),
                          
                        ),
                            ),
                          ),
                            Container(
                            
                            decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child: const TextField(
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(color:Colors.grey),
                          
                        ),
                            ),
                          ),
                        ],
                       ),
                      ),
                      const SizedBox(height:15),
                      const Text("Forget password ?"),
                      const SizedBox(height: 40,),
                      
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 159, 127, 234)
                          ),
                          child: const Center(
                            child: Text("login",style: TextStyle(color: Colors.white),),
                          ),

                        ),
                        const SizedBox(height: 40,),
                    
                        Column(
                          children:<Widget> [
                       Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 105, 145, 246)
                          ),
                          child: const Center(
                            child: Text(" sign in with google",style: TextStyle(color: Colors.white),),
                          ), 
                       ),
                          ],
                        ),
                    ],
                   ),
                  ) ,
            
                
            
          ),
                ),
            ],
          ),
    
             
              
          ),
    );
        
      
    
  }
  
  
}