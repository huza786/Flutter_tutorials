import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UploadFile extends StatefulWidget {
  const UploadFile({super.key});

  @override
  State<UploadFile> createState() => _UploadFileState();
}

class _UploadFileState extends State<UploadFile> {
  File? image;
  final _picker = ImagePicker();
  bool showspinner = false;
  Future getimage() async {
    final pickedfile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedfile != null) {
      image = File(pickedfile.path);
      setState(() {});
    } else {
      print('No Image Selected');
    }
  }

  Future<void> uploadfile() async {
    setState(() {
      showspinner = true;
    });
    var stream = new http.ByteStream(image!.openRead());
    stream.cast();
    var length = await image!.length();
    var uri = Uri.parse('https://fakestoreapi.com/products');
    var request = http.MultipartRequest('POST', uri);
    request.fields['title'] = 'Static title';
    var multiport = new http.MultipartFile('image', stream, length);
    request.files.add(multiport);
    var response = await request.send();
    if (response.statusCode == 200) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text(
                  'IMAGE Uploaded',
                  style: TextStyle(color: Colors.green),
                ),
              ));
      setState(() {
        showspinner = false;
      });
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Text(
                  'IMAGE NOT uploaded retry',
                  style: TextStyle(color: Colors.red),
                ),
              ));
      setState(() {
        showspinner = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showspinner,
      child: Scaffold(
        appBar: AppBar(title: Text('upload file')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (image == null)
                ? GestureDetector(
                    onTap: () {
                      getimage();
                    },
                    child: Center(child: Text('Pick Image')))
                : Container(
                    child: Image.file(
                      File(image!.path).absolute,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  uploadfile();
                },
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(child: Text('upload')),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
