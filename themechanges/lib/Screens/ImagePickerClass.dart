import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends GetxController{
  RxString imagepath = ''.obs;
  Future getImage()async{
     final ImagePicker picker = ImagePicker();
     final image = await picker.pickImage(source: ImageSource.gallery);
     if(image != null){
      imagepath.value = image.path.toString();
     }
  }

}