import 'package:flutter/material.dart';
import 'package:flutter_application_potfolio/componed/drawer.dart';
import 'package:flutter_application_potfolio/componed/projectitem.dart';
import 'package:flutter_application_potfolio/entities/project.dart';

class ListP extends StatefulWidget {
  const ListP({super.key});

  @override
  State<ListP> createState() => _ListPState();
}

class _ListPState extends State<ListP> {
 List<Project> projects=[
      Project(title: "Mobile App Developper", type: "E-Commerce App", description: 'A full-featured shopping app with user authentication, product catalog, cart management, and secure payment integration.', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMGiEVaQDbJFneIa7dUR8A5jBhiabkFL6ECA&s", link1: "link1"),
      Project(title: "Web Developper", type: "Web Site App", description: 'A full-featured shopping app with user authentication, product catalog, cart management, and secure payment integration.', image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMGiEVaQDbJFneIa7dUR8A5jBhiabkFL6ECA&s", link1: "link1"),
    ];
  @override
  void initState() {
   
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portfolio",
          style: TextStyle(
              fontFamily: 'Outfit',
              color: Color(0xFF15161E),
              fontSize: 24,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500),
        ),
      ),
      drawer: const MyDrawer(),
      body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: ListView.builder(
          itemCount: projects.length,

          itemBuilder: (context, index) {
           return ProjectItem(project: projects[index],);
         },),
      ),
    );
  }
}