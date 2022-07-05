import 'package:flutter/material.dart';

import 'home.dart';

class Comenzar extends StatelessWidget {
  const Comenzar ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xFF304FFE),
      body: Column(
 
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 100, 0, 0),
              child: Text(
                'Encuentra \ntu Carro Ideal',
                textAlign: TextAlign.start,
                style:  TextStyle(
                  fontFamily: 'Abel',
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Image.asset("img/autos.png",
                width: 500,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(250, 50),
                  primary:Colors.white,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
                onPressed: () {
                  
                  
                     Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyNavigationBar();
                        },
                      ),
                    );

                },
                child: Text('Empezar', style: TextStyle(
                    color: Colors.black
                  )),
                
                
              ),
            )
          ],
        ),
    );
  }
}