import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class SLocker extends StatefulWidget {
  const SLocker({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<SLocker> createState() => _SLockerState();
}

  class _SLockerState extends State<SLocker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Color(0xFF01B399),
        animationDuration: Duration(milliseconds: 300),
        items: [
        Icon(Icons.home),
        Icon(Icons.search),
        Icon(Icons.document_scanner_rounded),
        Icon(Icons.lock_clock),
        Icon(Icons.person),
      ],
      ),
    );
  }
  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          childer: [
            TextButton(
                 onPressed: () {
                     uploadPdf();
                 },
                  child: const Text("Upload PDF")),

          ],
        ),
      ),
    ).
  };
}

Future uploadPdf() async{
  var dio = Di0();

  FilePickerResult? result = await FilePicker.platform.pickFiles();

  if(result!=null){
    File file = File(result.files.single.path ?? " ");

    String fileName = file.path.split('/').last;
    String path = file.path;

    FormData data = FormData.fromMap({
      'x-api-key':'apikey',
      'file': await MultipartFile.fromFile(filePath, filename: fileName)
    });

    var response = dio.post("https://api.pdf.co/v1/file/upload", data: data);

    onSendProgress(int sent, int total){
      print('$sent $total');
    });
    print(response.toString());
    }else{
    print("Result is null");

  }
}