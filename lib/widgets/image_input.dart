import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart'as syspath;
class ImageInput extends StatefulWidget {
  final Function onSelectImage;

  const ImageInput({super.key, required this.onSelectImage});
  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
    File ? _storgeImage;

    Future<void>_takePicture()async{
     final picker = ImagePicker();
    final imageFile = await picker.pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (imageFile==null) {
      return;
    }
    setState(() {
       _storgeImage = File(imageFile.path);
    });
    final appDir = await syspath.getApplicationDocumentsDirectory();
    final fileName =    path.basename(imageFile.path);
    final savedImage = await  File(imageFile.path).copy('${appDir.path}/$fileName');
    widget.onSelectImage(savedImage);
    }
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
          child: TextButton.icon(onPressed: _takePicture, icon:const Icon( Icons.camera), 
          label: const Text('Take A Picture')
          )
        )
      ],
    );
  }
}