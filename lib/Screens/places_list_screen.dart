import 'package:flutter/material.dart';
import 'package:placesapp/Screens/add-place_screen.dart';
import 'package:placesapp/providers/great_places.dart';
import 'package:provider/provider.dart';

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
        body: Consumer<GreatPlaces>(
    child: const Center(
      child: Text('Got no places yet, start adding some!'),
    ),
    builder: (ctx, greatPlaces, ch) => greatPlaces.items.length<=0
        ? ch!
        : ListView.builder(
            itemBuilder: (ctx, index) => ListTile(
              leading: CircleAvatar(
                backgroundImage: FileImage(
                  greatPlaces.items[index].image,
                ),
              ),
              title: Text(greatPlaces.items[index].title),
              onTap: () {
                print("object");
              },
            ),
            itemCount: greatPlaces.items.length,
          ),
  ),

    );
  }
}