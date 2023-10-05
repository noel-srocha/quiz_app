import 'package:flutter/material.dart';

import '../../extensions/string_extensions.dart';
import '../../widgets/shared/configs/image_path_variants.dart';

class DisplayImage extends StatelessWidget {
  final String imagePath;
  final String color;
  final ImagePathVariant variant;

  const DisplayImage(
      {required this.imagePath,
      this.color = '#FFFFFF',
      this.variant = ImagePathVariant.asset,
      super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildImage({
      required String imagePath,
      required ImagePathVariant variant,
      String color = '#FFFFFF',
    }) {
      switch (variant) {
        case ImagePathVariant.network:
          return Image.network(
            imagePath,
            color: color.fromHex(),
          );

        case ImagePathVariant.asset:
        default:
          return Image.asset(
            imagePath,
            color: color.fromHex(),
          );
      }
    }

    return SizedBox(
      height: 200,
      width: 200,
      child: buildImage(imagePath: imagePath, variant: variant),
    );
  }
}
