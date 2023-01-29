import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:placesapp/widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});
static const routeName='/add-place';
  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _textController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                     TextField(
                      decoration:  const InputDecoration(labelText: 'title'),
                      controller: _textController,
                    ),
                    const SizedBox(),
                    ImageInput()
                  ],
                ),
              ),
            ),
          ),
          
          TextButton.icon( style: TextButton.styleFrom(
 tapTargetSize: MaterialTapTargetSize.shrinkWrap,elevation: 0)
      ,onPressed: () {
          },
          icon: const Icon(Icons.add),
           label: const Text('Add Place'),),
          
        ],
        
      ),
    );
  }
}