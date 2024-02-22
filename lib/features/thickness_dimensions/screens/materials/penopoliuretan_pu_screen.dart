import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class PenopoliuretanPuScreen extends StatelessWidget {
  static const name = "penopoliuretan-pu";

  const PenopoliuretanPuScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String fileName;
  final String cityOrVillage;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Пенополиуретан (ПУ)",
      materialName: "Пенопо-лиуретан",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.penopoliuretanPu.path,
      pros: [
        ProsAndCons(
          name: "теплоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.warm.path,
        ),
        ProsAndCons(
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
        ),
        ProsAndCons(
          name: "маленький объем",
          imagePath: Assets.images.howToInsulate.prosAndCons.weight.path,
        ),
      ],
      cons: [
        ProsAndCons(
          name: "защита",
          imagePath: Assets.images.howToInsulate.prosAndCons.escapeMask.path,
        ),
        ProsAndCons(
          name: """плохая
огнеупорность""",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.fireExtinguisher.path,
        ),
        ProsAndCons(
          name: """плохая
воздухопроницаемость""",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.centralHeating.path,
        ),
      ],
    );
  }
}
