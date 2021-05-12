import 'package:flutter/material.dart';

void main() => runApp(MyCardApp());

class MyCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Card de imágenes',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Najera: Tarjetas de imagen'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_a_photo_outlined), onPressed: () {}), //Boton con icono
            ], //Fin de acciones
          ), //AppBar
          body: Container(
            child: ListView(
              children: <Widget>[
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image01.jpg',
                  'Grupo De Fotografía',
                ), //Item 1
                SizedBox(
                  height: 5.0,
                ),
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image02.jpg',
                  'Ruvalcaba Sonriendo',
                ), //Item 2
                SizedBox(
                  height: 5.0,
                ),
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image03.jpg',
                  'Gianluca posando',
                ), //Item 3
                SizedBox(
                  height: 5.0,
                ),
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image04.jpg',
                  'Najera vs Covid',
                ), //Item 4
                SizedBox(
                  height: 5.0,
                ),
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image25.jpg',
                  'Screenshot Videollamada',
                ), //Item 5
                SizedBox(
                  height: 5.0,
                ),
                _items(
                  'https://raw.githubusercontent.com/Najeragim/imagenes/main/gridview1/image27.jpg',
                  'Laboratorio',
                ), //Item 5
                SizedBox(
                  height: 5.0,
                ),
              ], //Niños []
            ), //ListView
          ), //Body Contenedor
        ) //Home Scaffold
        ); //App Material
  } //Constructor
} //Clase MyCardApp

Widget _items(String url, String producto) {
  return Container(
    padding: EdgeInsets.only(top: 5.0, right: 10.0, left: 10.0),
    child: Card(
      color: Colors.grey[50],
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 1.0),
              padding: EdgeInsets.only(left: 0.5),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 0.2),
                leading: CircleAvatar(
                  backgroundColor: Colors.indigo[300],
                  backgroundImage: NetworkImage(url),
                  maxRadius: 35.0,
                ),
                title: Text(producto, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0)),
                subtitle: Text('Estas son imágenes de Najera', style: TextStyle(fontSize: 9.0)),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[400],
                ),
              ))
        ],
      ),
    ),
  );
}
