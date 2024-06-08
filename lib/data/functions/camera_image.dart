/**
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';



final ImagePicker _picker = ImagePicker();
  String? _uploadedFileURL;

  Future<void> _pickImage(ImageSource source) async {
    final PickedFile? pickedFile = await _picker.getImage(source: source);

    if (pickedFile != null) {
      File file = File(pickedFile.path);
      _uploadFile(file);
    }
  }

  Future<void> _uploadFile(File file, String reference) async {
    try {
      final storageReference = FirebaseStorage.instance
          .ref()
          .child(reference);
      final uploadTask = storageReference.putFile(file);
      await uploadTask.whenComplete(() => null);
      final fileURL = await storageReference.getDownloadURL();

      setState(() {
        _uploadedFileURL = fileURL;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Upload successful!')),
      );
    } catch (e) {
      print('Error uploading file: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Upload failed!')),
      );
    }
  }
  */