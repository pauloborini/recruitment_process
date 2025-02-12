import 'package:flutter/material.dart';
import 'package:motels/app_exports.dart';

class CategoryItem extends StatelessWidget {
  final String iconUrl;

  const CategoryItem({super.key, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.adaptive,
      height: 56.adaptive,
      padding: EdgeInsets.all(8.adaptive),
      decoration: BoxDecoration(
        color: context.colors.neutralShade150,
        borderRadius: BorderRadius.circular(8.adaptive),
      ),
      child: CustomRenderImage(
        imageUrl: iconUrl,
        fit: BoxFit.fitWidth,
        width: 40.adaptive,
        height: 40.adaptive,
      ),
    );
  }
}
