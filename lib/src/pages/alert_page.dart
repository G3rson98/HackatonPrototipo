import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar Alertas"),          
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=>_mostrarAlert(context),
          ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.keyboard_backspace),
        onPressed: (){
          Navigator.pop(context);
        },),
    );
  }

  void _mostrarAlert(BuildContext context) {
    
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          title: Text('contenido'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('este es el contenido de la caja de la alaerta'),
              FlutterLogo(size:100.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('cancelar'),
              onPressed: (){
                Navigator.of(context).pop();
               },
            ),
            FlatButton(
              child: Text('Ok'),
              onPressed: (){ 
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }

      );


  }
}