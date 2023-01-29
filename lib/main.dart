import 'package:flutter/material.dart';
import 'package:placesapp/Screens/add-place_screen.dart';
import 'package:placesapp/Screens/places_list_screen.dart';
import 'package:placesapp/providers/great_places.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
    
          primarySwatch: Colors.blue,
        ),
        home:const placeListScreen(),
        routes: {
          AddPlaceScreen.routeName:(context) => const AddPlaceScreen(),
        },
      ),
    );
  }
}