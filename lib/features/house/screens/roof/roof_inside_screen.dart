import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_curve_image.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class RoofInsideScreen extends StatelessWidget {
  static const routeName = "/roof-inside";

  const RoofInsideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldCurveImage(
      title: "УТЕПЛЕНИЕ ИЗНУТРИ",
      imagePath: Assets.images.roof.image20.path,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. Сначала надо установить контробрешётку, для обеспечения движения воздуха в подкровельном пространстве. Это очень важный момент, пренебрегать им не следует.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image21.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              """2. Монтаж пароизоляции осуществляется изнутри помещения путем крепления скобами к нижним торцам стропил. Видов гидроизоляционных мембран или плёнок существует немало, использование той или иной диктуется возможностями пользователя.
3. Далее крепится слой утеплителя — минваты или пенополистирола, нарезанного точно по размеру промежутков между стропилами. Утеплитель может временно удерживаться между досками за счёт собственной упругости, но для надёжности можно крепить его леской, для чего надо набить в стропила гвоздики.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image22.path),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "4. После укрепления утеплителя накладывается слой пароизолятора. Это плёночный материал, препятствующий накоплению конденсата и намоканию утеплителя. Часто применяют пергамин, полиэтиленовую или полипропиленовую плёнку. Полосы крепятся к стропилам степлером и соединяются между собой скотчем для достижения герметичности.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.roof.image23.path),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
