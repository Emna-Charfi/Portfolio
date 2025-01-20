import 'package:flutter/material.dart';
import 'package:flutter_application_potfolio/screens/detail.dart';
import 'package:flutter_application_potfolio/screens/listproject.dart';
import 'package:flutter_application_potfolio/screens/visit_card.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 40, 5, 5),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: 100,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/profil.png"),
              ),
            ),
            const Text(
              "Emma.stone@gmail.com",
              style: TextStyle(color: Colors.black),
            ),
            ListTile(
              title: const Text("Visit Cart"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const VisitCard();
                }));
              },
            ),
            ListTile(
              title: const Text("List Projet"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const ListProject();
                }));
              },
            ),
            ListTile(
              title: const Text("Details"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const Details(
                    email: "Emma.stone@gmail.com2",
                  );
                }));
              },
            ),
            ListTile(
                title: const Text("LinkedLn"),
                onTap: () {
                  _launchURL("https://www.linkedin.com/");
            }),
            ListTile(
                title: const Text("Contact us"),
                onTap: () {
                 _openGmail();
            }),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
   Future<void> _openGmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'example@gmail.com', // Replace with recipient email
      query: Uri.encodeQueryComponent('subject=Hello&body=How are you?'),
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not open Gmail';
    }
  }
}
