import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final fruits = const ["Apple", "Banana", "Grapes", "Stawberries", "Orange"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("List View Screen Type 2"),
            ),
        body: ListView.separated(
            // ignore: prefer_const_constructors
            itemBuilder: (context, index) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: Color.fromARGB(255, 202, 179, 255)),
                  title: Text(fruits[index]),
                  onTap: () {
                    final fruit = fruits[index];
                    print(fruit);
                  },
                ),
            separatorBuilder: (context, index) =>
                const Divider(), //Horizontal line after each item to separate content
            itemCount: fruits.length //Number of items the list has
            ));
  }
}
