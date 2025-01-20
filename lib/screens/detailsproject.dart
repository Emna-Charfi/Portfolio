import 'package:flutter/material.dart';
import 'package:flutter_application_potfolio/models/projet.dart';

class DetailsProject extends StatelessWidget {
  final Project project;
  const DetailsProject({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Center(
          child: Text(
            "Project Details",
            style: TextStyle(
              fontFamily: 'Sora',
              color: Color(0xFF15161E),
              fontSize: 24,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF15161E),
            size: 24,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1584270460993-7e0bb12e1ca6?w=500&h=500',
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child:  Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           project.title,
                            style: const TextStyle(
                              fontFamily: 'Sora',
                              color: Color(0xFF15161E),
                              fontSize: 22,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            project.type,
                            style: const TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF606A85),
                              fontSize: 14,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                     const  Text(
                        'Project Overview',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF15161E),
                          fontSize: 18,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        'A comprehensive mobile shopping application built with React Native, providing users with a seamless shopping experience. The app features user authentication, product browsing, cart management, and secure payment processing.',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          color: Color(0xFF15161E),
                          fontSize: 14,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  
                  color: Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3F2FD),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                          child: Text(
                            'Linkdln',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              color: Color(0xFF1565C0),
                              fontSize: 16,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFE3F2FD),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 16, 8, 16),
                        child: Text(
                          'Github',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            color: Color(0xFF1565C0),
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
