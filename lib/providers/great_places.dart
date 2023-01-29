import 'package:flutter/material.dart';
import 'package:placesapp/models/place.dart';

class GreatPlaces with ChangeNotifier{
  final List<Place>_item=[];
  List<Place>get items{
    return [..._item];
  }
}