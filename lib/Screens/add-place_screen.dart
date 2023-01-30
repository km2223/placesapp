import 'dart:io';

import 'package:flutter/material.dart';
import 'package:placesapp/providers/great_places.dart';
import 'package:placesapp/widgets/image_input.dart';
import 'package:provider/provider.dart';

class AddPlaceScreen extends StatefulWidget {
  const AddPlaceScreen({super.key});
static const routeName='/add-place';
  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController=TextEditingController();
       File? _pickImage;
    void _selectImage(File pickImage){ _pickImage=pickImage;}
    void _savePlace(){
      if (_titleController.text.isEmpty||_pickImage==null) {
        return;
      }
      Provider.of<GreatPlaces>(context,listen: false).addPlace(_titleController.text, _pickImage!);
      Navigator.of(context).pop();
    }
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
                      controller: _titleController,
                    ),
                    const SizedBox(),
                    ImageInput(onSelectImage:_selectImage ,),
                  ],
                ),
              ),
            ),
          ),
          
          TextButton.icon( style: TextButton.styleFrom(
 tapTargetSize: MaterialTapTargetSize.shrinkWrap,elevation: 0)
      ,onPressed:_savePlace,
          icon: const Icon(Icons.add),
           label: const Text('Add Place'),),
          
        ],
        
      ),
    );
  }
}