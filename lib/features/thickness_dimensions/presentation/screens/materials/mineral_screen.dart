import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/presentation/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class MineralScreen extends StatelessWidget {
  static const name = "mineral";

  const MineralScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String cityOrVillage;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Минеральная вата",
      materialName: """Минераль-ная 
вата""",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.mineral.path,
      pros: [
        ProsAndCons(
          name: "теплоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.warm.path,
        ),
        ProsAndCons(
          name: "огнеупорность",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.fireExtinguisher.path,
        ),
        ProsAndCons(
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
        ),
        ProsAndCons(
          name: "стойкость к влаге",
          imagePath: Assets.images.howToInsulate.prosAndCons.keepDry.path,
        ),
        ProsAndCons(
          name: "воздухопроницаемость",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.centralHeating.path,
        ),
      ],
      cons: [
        ProsAndCons(
          name: "защита",
          imagePath: Assets.images.howToInsulate.prosAndCons.escapeMask.path,
        ),
        ProsAndCons(
          name: "большой объем",
          imagePath: Assets.images.howToInsulate.prosAndCons.weight.path,
        ),
        ProsAndCons(
          name: "раздражение кожи и\nдыхательных путей",
          imagePath: Assets.images.howToInsulate.prosAndCons.dermatology.path,
        ),
      ],
    );
  }
}
