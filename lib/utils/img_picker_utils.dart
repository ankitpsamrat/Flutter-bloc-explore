import 'package:image_picker/image_picker.dart';

class ImgPickerUtils {
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> cameraCapture() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);

    return image;
  }

  Future<XFile?> pickImgFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    return image;
  }
}
