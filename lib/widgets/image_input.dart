import 'dart:io';

import 'package:flutter/material.dart';
class ImageInput extends StatefulWidget {
  const ImageInput({super.key});

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
    File ? _storgeImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
           width: 100,
           height: 100,
           decoration: BoxDecoration(
            border: Border.all(width: 1,
            color: Colors.grey)
            ),
            alignment: Alignment.center,
            child:_storgeImage!=null?Image.file(_storgeImage!,fit:BoxFit.cover ,width:double.infinity,):const Text('No image taken',textAlign: TextAlign.center,) ,
            ),
            const SizedBox(width: 10,),
            Expanded(
          child: TextButton.icon(onPressed: () {
            
          }, icon:const Icon( Icons.camera), 
          label: const Text('Take A Picture')
          )
        )
      ],
    );
  }
}