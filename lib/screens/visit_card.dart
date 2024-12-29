import 'package:flutter/material.dart';
import 'package:flutter_application_potfolio/componed/drawer.dart';
import 'package:flutter_application_potfolio/screens/detail.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 142, 151, 170),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("My Visit card", 
        style: TextStyle(color: Colors.white, fontSize: 25,  fontWeight: FontWeight.bold,),),),
        drawer: const MyDrawer(),
        body:    Center(
          child: Column(
            children: [
             const SizedBox(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/profil.png"),
                ),
              ),
             const Card(
                color: Color.fromARGB(255, 90, 88, 83),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Emma Stone", style: TextStyle(color: Colors.white),))),
                const  Card(
                    color: Color.fromARGB(255, 90, 88, 83),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text("Developper Flutter to create mobile application",
                       textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25, ),),
                    )
                  ),
                    const SizedBox(height: 10,),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                        return const Details(email: "Emma.stone@gmail.com2",);
                        }));}
                      , child:const Text("About Me", 
                    style: TextStyle(color: Colors.black, fontSize: 20),
                    ) ),
                    
            ],
          ),
        ),
    );
  }
}