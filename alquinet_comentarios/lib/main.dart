import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            drawer: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 35, 55, 73),
                  ),
                  child: Image.asset('assets/alquinet_logo.jpeg'),
                ),
                ListTile(
                  leading: const Icon(Icons.comment),
                  title: const Text('Comentarios'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ]),
            ),
            appBar: AppBar(
              centerTitle: true,
              title: const Text('ALQUINET'),
              backgroundColor: const Color.fromARGB(255, 35, 55, 73),
            ),
            body: ListView(
              children: <Widget>[
                Title(
                    color: Colors.deepOrange, child: const Text('Comentarios')),
                miCard(),
                
               
                
              ],
            )));
  }

  Card miCard() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(15),
        elevation: 10,
        child: Column(children: <Widget>[
          Image.asset('assets/casa1.jpeg'),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Vivienda, 3 Habitaciones, 1 baño'),
            subtitle: Text('UBICACION: Juan León Mera Nro. 19-36 y Av. Patria'),
            leading: Icon(Icons.home),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ]));
  }

  Card miCard2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image.asset('assets/casa2.jpeg'),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Vivienda, 4 Habitaciones, 2 Baños, Patio trasero'),
            subtitle: Text('UBICACION: Av. Amazonas N34-451 y Av. Atahualpa'),
            leading: Icon(Icons.home),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ],
      ),
    );
  }

  Card miCard3() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image.asset('assets/cara2.jpeg'),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Agente de buenas raices: Daniel Mera'),
            subtitle: Text('Formas de contacto: +59312345678'),
            leading: Icon(Icons.person),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ],
      ),
    );
  }

  Card miCard4() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(15),
      elevation: 10,
      child: Column(
        children: <Widget>[
          Image.asset('assets/cara1.jpeg'),
          const ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text('Agente de buenas raices: Ana Castro'),
            subtitle: Text('Formas de contacto: anacastrocasas@gmail.com'),
            leading: Icon(Icons.person),
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ],
      ),
    );
  }
}
