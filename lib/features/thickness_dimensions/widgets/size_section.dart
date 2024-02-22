import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/ti_manager.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class SizeSection extends StatelessWidget {
  const SizeSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Толщина стены",
      childrenIconPath: Assets.icons.roulette.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "200"),
        TIManager1Data(text: "250"),
        TIManager1Data(text: "300"),
        TIManager1Data(text: "350"),
        TIManager1Data(text: "400"),
        TIManager1Data(text: "450"),
        TIManager1Data(text: "500"),
      ],
    );
  }
}
