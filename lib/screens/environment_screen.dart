import 'package:flutter/material.dart';

class Environment extends StatelessWidget {
  const Environment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFde98bd),
      appBar: AppBar(
        backgroundColor:const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
                  "  البيئة المحيطة بك ",
          style: TextStyle(
              color: Color.fromARGB(255, 236, 161, 192),
              fontWeight: FontWeight.bold,
              fontSize: 23,
              fontFamily: 'cairo'),
        ),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 10,
      ),

      body: Column(
        children: [
        Card(
                  elevation: 13,
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  
                    child:const Padding(
                      padding: EdgeInsets.all(30),
                      child: Text(
                        'يجب توفير بيئة هادئة جيدة التهوية لا تحتوى على أضائة عالية فيجب ان تحاولى بقدر الامكان أن تجعلى البيئة المحيطة بكى هادئة ومريحة والاضائة به خافته. ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Color.fromARGB(255, 236, 161, 192),
                            fontFamily: 'cairo', ),
                          textDirection: TextDirection.rtl, ),
                    ),
                    
                  
                ),
        ],
      ),
    );
  }
}
