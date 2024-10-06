import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class FileUploader {
  final Reference uploadsRef = FirebaseStorage.instance.ref().child('uploadsfinal');

  Future<String?> uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
   
    if (result != null) {
      try {
        Uint8List fileBytes = result.files.first.bytes!;
        String fileName = result.files.first.name;
     
        final fileRef = uploadsRef.child(fileName);

        // Upload file
        final UploadTask task = fileRef.putData(fileBytes);

        // Wait for the upload to complete
        final TaskSnapshot snapshot = await task;

        // Get the download URL
        final String downloadUrl = await snapshot.ref.getDownloadURL();

        print('File uploaded successfully. Download URL: $downloadUrl');
        return downloadUrl;
      } catch (e) {
        print('Error uploading file: $e');
        return null;
      }
    } else {
      print("No file selected");
      return null;
    }
  }
}