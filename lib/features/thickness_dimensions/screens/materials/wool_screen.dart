import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class WoolScreen extends StatelessWidget {
  static const name = "wool";

  const WoolScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String fileName;
  final String cityOrVillage;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Шерсть",
      materialName: "Шерсть",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.wool.path,
      pros: [
        ProsAndCons(
          name: "теплоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.warm.path,
        ),
        ProsAndCons(
          name: "экологичный",
          imagePath: Assets.images.howToInsulate.prosAndCons.leaf.path,
        ),
        ProsAndCons(
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
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
