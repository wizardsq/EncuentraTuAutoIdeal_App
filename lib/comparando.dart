import 'package:flutter/material.dart';


class Comparando
 extends StatelessWidget {
  const Comparando({Key? key,required this.resultado}) : super(key: key);
  final String? resultado;
  
  @override
  
  
  Widget build(BuildContext context) {

    
    
    return Scaffold(
       appBar: AppBar(
            iconTheme: IconThemeData(
      color: Colors.black
    ),
    backgroundColor: Colors.white,
        elevation: 0,
        ),
      body: Container(
      
      child: ListView(
        children: [
          Column(
            children: [
              Text("Resultado", style: TextStyle(fontSize: 30, color: Colors.black,), ),
              
            ]
          ),
          
          Column(            
            children: [
              Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: (resultado== 'Excelente')
              ?
              Image.asset("img/check.png",
              
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ):(resultado== 'Bueno')?Image.asset("img/like.png",
              
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ):(resultado== 'Aceptable')?Image.asset("img/yaque.png",
              
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ):Image.asset("img/cruz.png",
              
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              )
            ),
            ]
          ),


          const SizedBox(
                height: 50,
              ),

          Column(
            children: [
              Text("Carro $resultado", style: TextStyle(fontSize: 23,color: Colors.black),),
              SizedBox(height: 20),
              Text("97% de precisión", style: TextStyle(fontSize: 17,color: Colors.black, fontWeight: FontWeight.bold),),
            ]
          ),

           const SizedBox(
                height: 50,
              ),
              
        Center(  
        child: Container(  
          width: 300,  
          height: 100,  
          padding: new EdgeInsets.all(10.0),  
          child: Card(  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            color: Colors.grey[300],   
            elevation: 10,  
            child: Column(  
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[  
                const ListTile(  
                  leading: Icon(Icons.check_circle, size: 30, color: Colors.green,),  
                  title: Text(  
                    'Excelente',  
                    style: TextStyle(fontSize: 20.0)  
                  ),  
                  subtitle: Text(  
                    'Es un automóvil ideal para usted',  
                    style: TextStyle(fontSize: 13.0, color: Colors.black) ,
                  ),  
                ),  
                 
              ],  
            ),
            
          ),  
        ),
      ),
      
      Center(  
        child: Container(  
          width: 300,  
          height: 100,  
          padding: new EdgeInsets.all(10.0),  
          child: Card(  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            color: Colors.grey[300],   
            elevation: 10,  
            child: Column(  
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[  
                const ListTile(  
                  leading: Icon(Icons.thumb_up_alt, size: 30, color: Colors.green,),  
                  title: Text(  
                    'Bueno',  
                    style: TextStyle(fontSize: 20.0)  
                  ),  
                  subtitle: Text(  
                    'Es un automóvil conveniente para usted',  
                    style: TextStyle(fontSize: 13.0, color: Colors.black) ,
                  ),  
                ),  
                 
              ],  
            ),
            
          ),  
        ),
      ),

      Center(  
        child: Container(  
          width: 300,  
          height: 100,  
          padding: new EdgeInsets.all(10.0),  
          child: Card(  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            color: Colors.grey[300],   
            elevation: 10,  
            child: Column(  
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[  
                const ListTile(  
                  leading: Icon(Icons.remove_circle, size: 30, color: Colors.orange,),  
                  title: Text(  
                    'Aceptable',  
                    style: TextStyle(fontSize: 20.0)  
                  ),  
                  subtitle: Text(  
                    'Puedes encontrar una mejor opción',  
                    style: TextStyle(fontSize: 13.0, color: Colors.black) ,
                  ),  
                ),  
                 
              ],  
            ),
            
          ),  
        ),
      ),

      Center(  
        child: Container(  
          width: 300,  
          height: 100,  
          padding: new EdgeInsets.all(10.0),  
          child: Card(  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(15.0),  
            ),  
            color: Colors.grey[300],   
            elevation: 10,  
            child: Column(  
              mainAxisSize: MainAxisSize.min,  
              children: <Widget>[  
                const ListTile(  
                  leading: Icon(Icons.report_problem, size: 30, color: Colors.red,),  
                  title: Text(  
                    'No Aceptable',  
                    style: TextStyle(fontSize: 20.0)  
                  ),  
                  subtitle: Text(  
                    'Es un automovil no ideal para usted',  
                    style: TextStyle(fontSize: 13.0, color: Colors.black) ,
                  ),  
                ),  
                 
              ],  
            ),
            
          ),  
        ),
      ),
          
        ]
      )

      
      )

       
    );
  }
  
}




