import 'package:flutter/material.dart';

class ItemComponent extends StatelessWidget {
  final int contador;
  const ItemComponent({super.key, required this.contador});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Item ${contador.toString()}'),
            const Icon(Icons.delete,
            color: Colors.black,),
          ],
        ),
      ),
    );
  }
}