import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});
static const routeName='/add-place';
  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: Column(
        children: [
          const Text('User input'),
          TextButton.icon(onPressed: () {
            
          }, icon: const Icon(Icons.add), label: const Text('Add Place'))
        ],
      ),
    );
  }
}