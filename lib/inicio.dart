import 'package:carro2/comparando.dart';
import 'package:carro2/modelo.dart';
import 'package:carro2/senddata.dart';
import 'package:flutter/material.dart';


class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int dropdownvalue = 0;
  var items =  [{
    'index':0,
    'value': '0-999'
  },
  {
    
    'index':1,
    'value': '1000-1999'
  },
  {
    'index':2,
    'value': '2000-2999'
  },
  {
    'index':3,
    'value': 'mayor de 3000'
  },
  ];

  int dropdownvalue2 = 2;
  var items2 =  [{
    'index':2,
    'value': '2'
  },
  {
    'index':3,
    'value': '3'
  },
  {
    'index':4,
    'value': '4'
  },
  {

    'index':5,
    'value': 'mayor de 5'

  },

  ];

  int dropdownvalue3 = 2;
  var items3 =  [{
    'index':2,
    'value': '2'
  },
  {
    'index':4,
    'value': '4'
  },
  {
    'index':5,
    'value': 'mayor a 5'
  },
  ];

  int dropdownvalue4 = 1;
  
  var items4 =  [{
    'index':1,
    'value': 'Pequeña'
  },
  {
    'index':2,
    'value': 'Mediana'
  },
  {
    'index':3,
    'value': 'Grande'
  },
  ];

  int dropdownvalue5 = 1;
  
  var items5 =  [{
    'index':1,
    'value': 'Bajo'
  },
  {
    'index':2,
    'value': 'Media'
  },
  {
    'index':3,
    'value': 'Alto'
  },
  ];
  

  int dropdownvalue7 = 0;
  var items7 =  [{
    'index':0,
    'value': 'Mayor a 300,000'
  },
  {
    'index':1,
    'value': 'Entre 150,000 y 299,999'
  },
  {
    'index':2,
    'value': 'Entre 50,000 y 149,999'
  },
  {
    'index':3,
    'value': 'Menor de 49,999'
  },
  ];
  
  @override
  
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Column(
            children: [
          SizedBox(height: 50),
              Text("Costo de auto", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue7,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items7.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue7 = newValue!;
                   });
                  },
                ),
                
              
            ],
          ),
        
          Column(
            children: [
              
          SizedBox(height: 50),
              Text("Precio de mantenimiento", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue = newValue!;
                   });
                  },
                ),
                
              
            ],
          ),

        Column(
            children: [
          SizedBox(height: 50),
              Text("Numeros de puertas", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue2,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items2.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue2 = newValue!;
                   });
                  },
                ),

            ],
          ),


          Column(
            children: [
          SizedBox(height: 50),
              Text("Numero de personas", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue3,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items3.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue3 = newValue!;
                   });
                  },
                ),

            ],
          ),


          Column(
            children: [
          SizedBox(height: 50),
              Text("Tamaño de cajuela", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue4,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items4.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue4 = newValue!;
                   });
                  },
                ),

            ],
          ),

          Column(
            children: [
          SizedBox(height: 50),
              Text("Nivel de seguridad", style: TextStyle(fontSize: 20),),
                DropdownButton<int>(
                  value: dropdownvalue5,
                    icon: Icon(Icons.keyboard_arrow_down),
                    items:items5.map((item) {
                        return DropdownMenuItem(
                             value: int.parse(item['index'].toString()),
                             child: Text(item['value'].toString())
                        );
                    }
                   ).toList(),
                  onChanged: (newValue){
                    setState(() {
                     dropdownvalue5 = newValue!;
                   });
                  },
                ),

            ],
            
          ),
        Column(
          children: [
            SizedBox(height: 50),
            ElevatedButton.icon(
          label:Text('Enviar datos'),
          icon: Icon(Icons.send_rounded),

          onPressed: ()async{
          Modelo modelo = Modelo(precio: dropdownvalue7, man: dropdownvalue, puerta: dropdownvalue2, persona: dropdownvalue3, cajuela: dropdownvalue4, seguridad: dropdownvalue5);
          print('enviar datos');
          String? enviar = await senddata(modelo);
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return Comparando(resultado: enviar,);
          }));
          
        }, 
        
        ),
        
          ]
        ),
        
        SizedBox(height: 50),
        
        
      
        ],
      ),
    );
  }
}


