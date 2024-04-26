
import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/item_component.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<int> contador = [0, 1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'List Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemComponent(
              contador: contador[0],
            ),
            const SizedBox(height: 350.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  contador.add(contador.length);
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,

              ),
              child: const Text('Adicionar Item',
              style: TextStyle(fontFamily: "Helvetica",
              color: Colors.white,
              fontSize: 18.0),),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                
              ),
              child: const Text('Voltar para Home',
              style: TextStyle(fontFamily: "Helvetica",
              color: Colors.white,
              fontSize: 18.0),),
            ),
          ],
        ),
      ),
    );
  }
}