import 'package:flutter/material.dart';
import 'package:motels/app_exports.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final VoidCallback onPressed;

  const FavoriteButton({
    super.key,
    required this.isFavorite,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Icon(
        PhosphorIconsFill.heart,
        size: 32.icon,
        color: isFavorite ? context.colors.primary : context.colors.neutralShade400,
      ),
    );
  }
}
