import 'package:flutter/material.dart';
import 'package:zhyluu_ui/constants/text_styles.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_image_background.dart';
import 'package:zhyluu_ui/features/common/widgets/my_bottom_bar.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class FundamentBillingScreen extends StatelessWidget {
  static const routeName = "/fundament-billing";

  const FundamentBillingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffoldImageBackground(
      title: "2. Процесс засыпного метода утепления фундамента",
      bottomBar: MyBottonBar(
        iconPath: Assets.icons.house.house.path,
        text: "ДОМ",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Засыпной метод утепления фундамента из керамзита и других материалов - это один из вариантов использования легких заполнителей для утепления. Керамзит и другие легкие материалы используются для создания слоя утеплителя вокруг фундамента здания или сооружения.",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                style: AppTextStyles.regularTextStyle,
                children: [
                  TextSpan(
                    text: "Подготовка поверхности: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Как и при любом методе утепления, поверхность фундамента должна быть хорошо очищена от грязи, пыли и мусора. При необходимости выполняется ремонт повреждений фундамента и гидроизоляция.\n\n"),
                  TextSpan(
                    text: "Выбор материала: ",
                    style: AppTextStyles.invertedTextStyle,
                  ),
                  const TextSpan(
                      text:
                          "Для засыпного метода утепления можно использовать различные легкие материалы, такие как керамзит, гравий, песок"),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Text(
              """1. Вдоль фундамента копают траншею шириной не менее 80 см на всю его глубину, после чего очищают стенки фундамента от грязи, песка, пыли. Просушивают фундамент.
2. Важно помнить, что керамзитовая крошка способна впитывать влагу, поэтому внутри опалубки необходимо проложить гидроизолирующий материал (синтетическая пленка, рубероид и т. п.). Выполняют гидроизоляцию оклеечным или обмазочным способом. Для обмазки используют битумную мастику. Оклеечный способ подразумевает применение рубероида или других пленочных покрытий, приклеенных на подходящий состав.
3. Траншею засыпают наполнителем: на дно – слой песка около 20 см, трамбуют, после чего высыпают строительный керамзит или гравий. Выравнивают по уровню почвы или чуть выше.
4. Легкий утеплитель (например, керамзит) равномерно распределяется вокруг фундамента на нужной высоте. Засыпка может выполняться вручную или с помощью специального оборудования.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.images.fundament.image221.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              """5. Уплотнение. После засыпки материала следует уплотнить слой утеплителя, чтобы предотвратить образование пустот и обеспечить равномерность утепления.
6. По завершении изоляционных работ снаружи стен здания на ширину в 50-80 см выполняется отмостка с небольшим уклоном в сторону от дома. Отмостка необходима для усиления теплоизоляции слоя из керамзита. Для обустройства отмостки по периметру строения монтируют опалубку 10–15 см в высоту, покрывают армирующей сеткой и заливают бетонным раствором. Для улучшения гидроизоляционных свойств в бетон можно добавить специальный состав.""",
              style: AppTextStyles.regularTextStyle,
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.images.fundament.image222.path),
                Image.asset(Assets.images.fundament.image223.path),
              ],
            ),
            const SizedBox(height: 15),
            Text(
              """Преимущества засыпного метода утепления с использованием керамзита и других легких материалов включают простоту выполнения и более низкую стоимость по сравнению с некоторыми другими методами. Однако он может быть менее эффективным в сравнении с использованием специальных теплоизоляционных материалов, таких как пенопласт или экструдированный пенополистирол XPS, особенно если требуются более высокие показатели теплоизоляции.
Как и в случае с другими методами утепления, рекомендуется обращаться к опытным специалистам или профессионалам, чтобы правильно выполнить утепление фундамента и выбрать наиболее подходящие материалы и методы утепления для вашего конкретного проекта""",
              style: AppTextStyles.regularTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
