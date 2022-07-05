import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Acercade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
            title: const Text ('Acerca de', style: TextStyle(fontSize: 20, color: Colors.black,), ),
            iconTheme: IconThemeData(
      color: Colors.black
    ),
    backgroundColor: Colors.white,
        elevation: 0,
        ),
      

      body: Container(
       padding: EdgeInsets.all(2.0),
          margin: EdgeInsets.all(5.0), 
      decoration: BoxDecoration(color: Colors.white),
      
      child: ListView(
        
        children: [
          SizedBox(height: 30,),
          
          Column(
            
            children: [
              Text("Esta aplicación fue desarrollada utilizando flutter para la construcción de la aplicación móvil, también fue necesaria la creación de una Api, la cual fue desarrollada utilizando Python y la librería Flask para la creación del servidor web. El modelo para la predicción fue creado utilizando la librería de Sckit-Learn y se utilizo el modelo de clasificación de Decision-Tree. Los valores de Accurrancy, Recall , F1-score fuerón:", textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15),),
            ],
          ),
          DataTable(
                sortColumnIndex: 2,
                sortAscending: false,
                columns: [
                  DataColumn(label: Text("Clase")),
                  DataColumn(label: Text("Precision")),
                  DataColumn(label: Text("Recall")),
                  DataColumn(label: Text("F1-Sc"),),
                  
                ],
                rows: [
                  DataRow(
                    //selected: true,
                    cells: [
                    DataCell(Text("Excelente")),
                    DataCell(Text("1")),
                    DataCell(Text("0.94")),
                    DataCell(Text("0.97"))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("Bueno")),
                    DataCell(Text("0.86")),
                    DataCell(Text("0.96")),
                    DataCell(Text("0.91"))
                  ]),
                  
                  DataRow(cells: [
                    DataCell(Text("Aceptable")),
                    DataCell(Text("0.97")),
                    DataCell(Text("0.91")),
                    DataCell(Text("0.99"))
                  ]),
                  DataRow(cells: [
                    DataCell(Text("No aceptable")),
                    DataCell(Text("0.98")),
                    DataCell(Text("1")),
                    DataCell(Text("0.99"))
                  ])
                  
                ],
              ),
            SizedBox(height: 30,),
              Column(
            children: [
              Text("Los datos fueron limpiados y balanceados y pueden ser encontrados en el siguiente enlace:",
              style: TextStyle(fontSize: 15),),
              SizedBox(height: 30,),
               ElevatedButton ( onPressed: () => launch('https://www.kaggle.com/elikplim/car-evaluation-data-set'),
                child: Text("Ver Dataset",
                style: TextStyle(fontSize: 15),),
              ),

              
            ],
          ),

              
        ],
      ),
      )
    );
  }
}