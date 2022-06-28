import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);
  final fruits = const ["Apple", "Banana", "Grapes", "Stawberries"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("List View Screen Type 1")),
        body: ListView(children: [
          //Los tres puntos son para convertir a lista?
          //Map estructura clave: valor
          ...fruits
              .map((fruit) => ListTile(
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(fruit),
                  ))
              .toList()
        ]));
  }
}
