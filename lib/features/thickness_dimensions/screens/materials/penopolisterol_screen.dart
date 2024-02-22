import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/screens/materials/material_base_screen.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class PenopolisterolScreen extends StatelessWidget {
  static const name = "penopolisterol";

  const PenopolisterolScreen({
    super.key,
    required this.cityOrVillage,
    required this.fileName,
  });

  final String cityOrVillage;
  final String fileName;

  @override
  Widget build(BuildContext context) {
    return MaterialBaseScreen(
      title: "Пенополистирол (ППС)",
      materialName: """Пенопо-листирол
(Пенопласт)""",
      fileName: fileName,
      cityOrVillage: cityOrVillage,
      imagePath: Assets.images.howToInsulate.prosAndCons.penopolisterol.path,
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
          name: "маленький объем",
          imagePath: Assets.images.howToInsulate.prosAndCons.weight.path,
        ),
        ProsAndCons(
          name: "стойкость к влаге",
          imagePath: Assets.images.howToInsulate.prosAndCons.keepDry.path,
        ),
      ],
      cons: [
        ProsAndCons(
          name: """легко 
повреждается""",
          imagePath: Assets.images.howToInsulate.prosAndCons.protect.path,
        ),
        ProsAndCons(
          name: "звукоизоляция",
          imagePath: Assets.images.howToInsulate.prosAndCons.noAudio.path,
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
