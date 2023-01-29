import 'package:flutter/material.dart';
import 'package:placesapp/Screens/add-place_screen.dart';

class placeListScreen extends StatelessWidget {
  const placeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(onPressed: () {
            Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
          }, icon: const Icon(Icons.add))
        ],

      ),
      body:const Center(
        child: CircularProgressIndicator(
        
        ),
      ),
    );
  }
}