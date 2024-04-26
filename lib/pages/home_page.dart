
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          iconSize: 25,
          onPressed: () {},
        ),
      ),
      
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [        
        const Text("Listagem e Navegação", 
            style: TextStyle(fontFamily: 'Helvetica',
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
            color: Colors.black
            ),),
        const SizedBox(height: 10),
        const Text("Uma aplicação para",
            style: TextStyle(fontFamily: 'Helvetica',
            fontSize: 20.0,
            color: Colors.black)
            ),
        const Text("gerência de estado e",
            style: TextStyle(fontFamily: 'Helvetica',
            fontSize: 20.0,
            color: Colors.black)),
        const Text("navegação com Flutter",
            style: TextStyle(fontFamily: 'Helvetica',
            fontSize: 20.0,
            color: Colors.black)),
        const SizedBox(height: 10),
        TextButton(
          style: TextButton.styleFrom(backgroundColor: Colors.red),
          child:  const Text('Ir para List Page',
            style: TextStyle(fontFamily: 'Helvetica',
            fontSize: 16.0,
            color: Colors.white)),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
        ],
      ),
      
    );
  }
}