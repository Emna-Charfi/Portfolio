import 'package:flutter/material.dart';
import 'package:flutter_application_potfolio/componed/drawer.dart';

class Details extends StatelessWidget {
  final String email;
  const Details({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 142, 151, 170),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("About Me..", 
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25 ),),
      ),
      drawer: const MyDrawer(),
      body:  SingleChildScrollView(
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
                  SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
          const Padding(
            padding:  EdgeInsets.all(3.0),
            child:  Card(
               color: Color.fromARGB(255, 90, 88, 83),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("The CircleAvatar isn’t just another widget; it’s a versatile powerhouse. Think of it as your go-to for crafting sleek, professional-looking user representations with minimal effort. It’s your all-in-one toolkit for diverse, inclusive avatar designs, tailored to fit any app’s style."
                        ,style: TextStyle(color: Colors.white, fontSize: 15),),
              ),),
          ),
           SizedBox(height: MediaQuery.sizeOf(context).height*0.03,),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Icon(Icons.mail, color: Colors.white),
            const SizedBox(width: 5,),
            Text(email, style: const TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold, fontSize: 15),)
           ],)
        ],
      ),
      ),
    );
  }
}