import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddPhotoController extends GetxController {
  final ImagePicker picker = ImagePicker();

  final RxList<XFile> pickedImages = <XFile>[].obs;

  Future<void> pickImagesFromGallery() async {
    final List<XFile> images = await picker.pickMultiImage(imageQuality: 80);
    if (images.isNotEmpty) {
      if (pickedImages.length + images.length > 10) {
        Get.snackbar('خطأ', 'يمكنك اختيار حتى 10 صور فقط');
        return;
      }
      pickedImages.addAll(images);
    }
  }

  Future<void> pickImageFromCamera() async {
    final XFile? photo =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 80);
    if (photo != null) {
      if (pickedImages.length >= 10) {
        Get.snackbar('تنبيه', 'وصلت للحد الأقصى 10 صور');
        return;
      }
      pickedImages.add(photo);
    }
  }

  void removeImage(int index) {
    pickedImages.removeAt(index);
  }

  void clearAll() {
    pickedImages.clear();
    update();
  }

  int selectedphoto = -1;
  void onphotoChanged(int index) {
    int oldIindx = selectedphoto;
    selectedphoto = index;

    update(['$oldIindx', '$index']);
  }

  @override
  void onClose() {
    clearAll();
    print('AddPhotoController closed and images cleared ');
    super.onClose();
  }
}
