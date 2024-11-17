import 'dart:io';
import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  XFile? _xFile;
  String? _imagePath;
  XFile? get xFile => _xFile;
  String? get imagePath => _imagePath;

  Future<void> pickImage() async {
    _xFile = await _picker.pickImage(source: ImageSource.gallery);
    update();
  }

  Future<bool> uploadProfile() async {
    update();
    bool success = false;
    http.StreamedResponse response = await updateProfile(_xFile);
    if (response.statusCode == 200) {
      Map map = jsonDecode(await response.stream.bytesToString());
      String message = map["message"];
      success = true;
      print("message is $message");
      _imagePath = message;
    } else {
      print("Error uploading image");
    }

    update();
    return success;
  }

  Future<http.StreamedResponse> updateProfile(XFile? data) async {
    http.MultipartRequest request = http.MultipartRequest(
      "POST",
      Uri.parse("192.168.1.47:8000/api/v1/auth/upload"),
    );
    if (GetPlatform.isMobile && data != null) {
      File _file = File(data.path);
      request.files.add(http.MultipartFile(
          'image', _file.readAsBytes().asStream(), _file.lengthSync(),
          filename: _file.path.split('/').last));
    }
    http.StreamedResponse response = await request.send();
    return response;
  }
}
