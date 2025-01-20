import 'package:flutter/material.dart';

import 'package:flutter_application_potfolio/models/projet.dart';

import 'package:flutter_application_potfolio/screens/detailsproject.dart';

class ProjectItem extends StatelessWidget {
  final Project project;
  const ProjectItem({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                 Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                          return  DetailsProject(project: project,);
                          }));
              },
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  project.title,
                                  style: const TextStyle(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF15161E),
                                    fontSize: 15,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                 project.type,
                                  style: const TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF606A85),
                                    fontSize: 15,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  //"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMGiEVaQDbJFneIa7dUR8A5jBhiabkFL6ECA&s",
                                  project.images,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        ),
                         Text(
                         // 'A full-featured shopping app with user authentication, product catalog, cart management, and secure payment integration.',
                         project.description,
                          style: const TextStyle(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF15161E),
                            fontSize: 14,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.003,
                        ),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFE3F2FD),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8, 16, 8, 16),
                                child: Text(
                                  "React Native",
                                  style: TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFF1565C0),
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFE3F2FD),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8, 16, 8, 16),
                                child: Text(
                                  "FireBase",
                                  style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF2E7D32),
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: const Color(0xFFE3F2FD),
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8, 16, 8, 16),
                                child: Text(
                                  "Stripe",
                                  style: TextStyle(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: Color(0xFFEF6C00),
                                    fontSize: 12,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ) ;
  }
}