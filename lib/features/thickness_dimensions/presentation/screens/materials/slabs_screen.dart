import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/presentation/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class SlabsScreen extends StatelessWidget {
  static const name = "slabs";

  const SlabsScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String fileName;
  final String cityOrVillage;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Камышитовые плиты",
      materialName: "Камыш",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.slab.path,
      pros: [
        ProsAndCons(
          name: "теплоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.warm.path,
        ),
        ProsAndCons(
          name: "экологичный",
          imagePath: Assets.images.howToInsulate.prosAndCons.leaf.path,
        ),
      ],
      cons: [
        ProsAndCons(
          name: "защита",
          imagePath: Assets.images.howToInsulate.prosAndCons.escapeMask.path,
        ),
        ProsAndCons(
          name: "огнеупорность",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.fireExtinguisher.path,
        ),
        ProsAndCons(
          name: "биоразлагаемый",
          imagePath: Assets.images.howToInsulate.prosAndCons.protect.path,
        ),
      ],
    );
  }
}
