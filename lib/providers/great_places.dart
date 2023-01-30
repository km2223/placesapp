
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:placesapp/helpers/db_helper.dart';
import 'package:placesapp/models/place.dart';

class GreatPlaces with ChangeNotifier{
  final List<Place>_item=[];
  List<Place>get items{
    return [..._item];
  }
  void addPlace(String pickedTitle,File pickedImage){
    final newPlace=Place(id: DateTime.now().toString(), title: pickedTitle, image: pickedImage, location:null );
    print('ooooooo');
    items.add(newPlace);
    notifyListeners();
    DBHelper.insert('places', {'id':newPlace.id,'title':newPlace.title,'image':newPlace.image.path });
  }
}