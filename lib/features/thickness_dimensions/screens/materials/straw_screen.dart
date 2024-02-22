import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class StrawScreen extends StatelessWidget {
  static const name = "straw";

  const StrawScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String cityOrVillage;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Утеплитель из соломы",
      materialName: "Соло-ма",
      cityOrVillage: cityOrVillage,
      fileName: fileName,
      imagePath: Assets.images.howToInsulate.prosAndCons.straw.path,
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
        ProsAndCons(
          name: "стойкость к влаге",
          imagePath: Assets.images.howToInsulate.prosAndCons.keepDry.path,
        ),
        ProsAndCons(
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
        ),
      ],
    );
  }
}
