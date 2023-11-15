import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/presentation/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class PenopolisterolXpsScreen extends StatelessWidget {
  static const name = "penopolisterol-xps";

  const PenopolisterolXpsScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String cityOrVillage;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Экструдированный\nпенополистирол (XPS)",
      materialName: "Экструдиро-ванный пенополи-стирол",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.penopolisterolXps.path,
      pros: [
        ProsAndCons(
          name: "теплоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.warm.path,
        ),
        ProsAndCons(
          name: "прочность",
          imagePath: Assets.images.howToInsulate.prosAndCons.protect.path,
        ),
        ProsAndCons(
          name: "стойкость к влаге",
          imagePath: Assets.images.howToInsulate.prosAndCons.keepDry.path,
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
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
        ),
        ProsAndCons(
          name: "огнеупорность",
          imagePath:
              Assets.images.howToInsulate.prosAndCons.fireExtinguisher.path,
        ),
      ],
    );
  }
}
