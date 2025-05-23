import 'multi_image_layout.dart';

/// View Image(s)
void openImage(BuildContext context, final int index, List<String> unitImages,
    List<String>? captions, Map<String, String>? headers, Function(String url)? customShareFunction, Function(String url)? customSaveFunction) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => GalleryPhotoViewWrapper(
        galleryItems: unitImages,
        captions: captions,
        backgroundDecoration: const BoxDecoration(
          color: Colors.black,
        ),
        initialIndex: index,
        scrollDirection: Axis.horizontal,
        headers: headers,
        customSaveFunction: customSaveFunction,
        customShareFunction: customShareFunction,
      ),
    ),
  );
}
