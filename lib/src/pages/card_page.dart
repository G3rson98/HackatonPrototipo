import 'package:flutter/material.dart';


class CardPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
      backgroundColor: Colors.lightGreenAccent,

    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue,),
            title: Text('Soy el Titulo de esta Targeta'),
            subtitle: Text('esto es el subtitulo de esta tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){},child: Text('cancelar'),),
              FlatButton(onPressed: (){},child: Text('ok'),),
            ],
          ),
        ],
      ),
    );
  }

 Widget _cardTipo2() {
   final card= Container(
     child: Column(
       children: <Widget>[
         FadeInImage(
           image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg') ,
           placeholder: AssetImage('assets/jar-loading.gif'),
           fadeInDuration: Duration(milliseconds: 200),
           height: 305.0,
           fit: BoxFit.cover,
         ),
        //  Image(
        //    image: NetworkImage('https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
        //  ),
         Container(
           padding: EdgeInsets.all(15.0),
           child: Text('no tengo idea de que poner aqui')),
           
       ],
     ),
   );

    return Container(      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0)
          )
        ],
      ),  
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
          
    );

 }
}