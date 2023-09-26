import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/shared/configs/image_path_variants.dart';

class DisplayImage extends StatelessWidget {
  final String imagePath;
  final ImagePathVariant variant;

  const DisplayImage({
    required this.imagePath,
    this.variant = ImagePathVariant.asset,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case ImagePathVariant.network:
        return Image.network(imagePath);
      
      case ImagePathVariant.asset:
      default:
        return Image.asset(imagePath);
    }
  }
}
