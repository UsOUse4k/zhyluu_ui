import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class SealingCracksScreen extends StatelessWidget {
  static const routeName = "/sealing-cracks-screen";

  const SealingCracksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "5 Заклеивание дополнительных щелей и трещин:",
      imagePath: Assets.images.appartment.sealingCracks.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Проверьте оконные рамы и заполните все мелкие щели и трещины уплотнителем или герметиком для устранения сквозняков.",
              style: AppTextStyles.italicTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Наклейка бумажных полос",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              "Самый доступный и дешевый вариант, который использовался еще дедами. Размоченные в воде газеты или другая бумага заталкивались в щели деревянных конструкций. Сверху клеились полоски белой «лицевой» бумаги. В качестве связующего в те времена использовался насыщенный раствор хозяйственного мыла. Современный аналог этого способа – самоклеящаяся бумага – используется как бюджетный вариант утепления в общественных зданиях.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Использование поролоновых уплотнителей ",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              "представляет собой один из способов утепления. Использование поролонового клеящегося утеплителя. Это еще один из экономичных способов утепления окон. Специальные поролоновые ленты имеют на одной из поверхностей клеевой слой с защитной пленкой, после ее снятия просто крепко прижимаете клейкой стороной поролон в местах стыков вашего окна, и утеплитель держится, с приходом весны легко удаляется.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Text(
              "Использование герметиков для заделки щелей. ",
              style: AppTextStyles.invertedTextStyle,
            ),
            Text(
              "Утепление окна с помощью силиконового герметика потребует идеальной чистоты поверхности. Также необходим специальный пистолет для него.\nНужно просто нанести герметик в щели и подождать, когда он застынет.\nНужно понимать, что герметик не является утеплителем, с его помощью можно заделать щели и швы, для снижения тепловых потерь.",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
