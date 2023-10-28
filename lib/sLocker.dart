import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path/path.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class SLocker extends StatefulWidget {
  SLocker({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  State<SLocker> createState() => _SLockerState();
}

class _SLockerState extends State<SLocker> {
  File? docfile;
  final TextEditingController _jobTitleController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            // padding: ,
            child: CurvedNavigationBar(
              backgroundColor: Colors.white,
              color: const Color(0xFF01B399),
              animationDuration: const Duration(milliseconds: 300),
              items: const [
                Icon(Icons.home),
                Icon(Icons.search),
                Icon(Icons.document_scanner_rounded),
                Icon(Icons.lock_clock),
                Icon(Icons.person),
              ],
            ),
          ),
          Container(
            // padding: ,
            child: TextButton(
                onPressed: () {
                  uploadPdf();
                },
                child: const Text("Upload PDF")),
          )
        ],
      ),
    );
  }
  Future uploadPdf() async{
    final result = await FilePicker.platform.pickFiles(
      type : FileType.custom ,
      allowedExtensions: ['pdf' , 'doc'] ,
    );
    if (result != null ) {
      final path = result.files.single.path!;
      if(path.isNotEmpty) {
        setState(() {
          docfile = File(path);
        });
      }
    }
      Container(
        padding: const EdgeInsets.only(left: 24.0, top: 18.0),
        child: const Text(
          'Professional Title',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Gilroy',
          ),
        ),
      );
      Container(
        padding: const EdgeInsets.only(left: 24.0, right: 16.0, top: 10.0),
        child: DropdownButton<String>(
          value: 'selected Job Title',
          onChanged: (newValue){
            setState(() {
              var selectedJobTitle = newValue! ;
              _jobTitleController.text = newValue;
            });
          },
          items: <String>[
            'Select Job Title',
            'Advocate',
            'Mediator',
            'Arbitrator',
            'Notaries',
            'Legal Document Writer',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      );
  }
}