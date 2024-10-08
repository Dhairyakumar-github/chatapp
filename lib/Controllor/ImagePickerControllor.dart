import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerControllor extends GetxController {
  final ImagePicker picker = ImagePicker();

  Future<String> pickImage() async {
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      // print(image.path);
      return image.path;
    } else {
      return "";
    }
  }
}
