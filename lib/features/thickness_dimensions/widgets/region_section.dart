import 'package:flutter/material.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/ti_manager.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class RegionSection extends StatelessWidget {
  const RegionSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager2(
      text: "Область",
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager2Data(
          iconPath: Assets.icons.bishkek.path,
          text: "Чуй",
        ),
        TIManager2Data(
          iconPath: Assets.icons.issykKol.path,
          text: "Ысык-Кол",
        ),
        TIManager2Data(
          iconPath: Assets.icons.naryn.path,
          text: "Нарын",
        ),
        TIManager2Data(
          iconPath: Assets.icons.talas.path,
          text: "Талас",
        ),
        TIManager2Data(
          iconPath: Assets.icons.djalalAbad.path,
          text: "Джалал-Абад",
        ),
        TIManager2Data(
          iconPath: Assets.icons.osh.path,
          text: "Ош",
        ),
        TIManager2Data(
          iconPath: Assets.icons.batken.path,
          text: "Баткен",
        ),
      ],
    );
  }
}

class CityVillageSection extends StatelessWidget {
  const CityVillageSection({
    super.key,
    required this.name,
    required this.progress,
    required this.length,
    this.onTap,
  });

  final String name;
  final int progress;
  final int length;
  final Function(String)? onTap;

  @override
  Widget build(BuildContext context) {
    switch (name) {
      case "Чуй":
        return ChuiSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Ысык-Кол":
        return IssykKolSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Нарын":
        return NarynSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Талас":
        return TalasSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Джалал-Абад":
        return DjalalAbadSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Ош":
        return OshSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
      case "Баткен":
        return BatkenSection(
          progress: progress,
          length: length,
          onTap: (data) {
            onTap?.call(data);
          },
        );
    }
    
    return const SizedBox.shrink();
  }
}

class ChuiSection extends StatelessWidget {
  const ChuiSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Бишкек"),
        TIManager1Data(text: "с. Чон-Арык"),
        TIManager1Data(text: "с. Байтик"),
        TIManager1Data(text: "Тюя-Ашу"),
        TIManager1Data(text: "с. Шабдан"),
        TIManager1Data(text: "г. Токмок"),
        TIManager1Data(text: "г. Кант"),
        TIManager1Data(text: "г. Кара-Балта"),
        TIManager1Data(text: "с. Беловодское"),
        TIManager1Data(text: "с. Чуйская"),
        TIManager1Data(text: "с. Константиновка"),
        TIManager1Data(text: "с. Красный октябрь"),
        TIManager1Data(text: "с. Юрьевка"),
      ],
    );
  }
}

class IssykKolSection extends StatelessWidget {
  const IssykKolSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Чолпон-Ата"),
        TIManager1Data(text: "г. Балыкчы"),
        TIManager1Data(text: "с. Койлуу"),
        TIManager1Data(text: "с. Тамга"),
        TIManager1Data(text: "с. Покровка"),
        TIManager1Data(text: "г. Каракол"),
        TIManager1Data(text: "с. Чон-кызылсуу"),
        TIManager1Data(text: "с. Ак-Шийрак"),
        TIManager1Data(text: "с. Тарагай"),
      ],
    );
  }
}

class NarynSection extends StatelessWidget {
  const NarynSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Нарын"),
        TIManager1Data(text: "с. Ат-Башы"),
        TIManager1Data(text: "с. Суусамыр"),
        TIManager1Data(text: "с. Кара-куджур"),
        TIManager1Data(text: "с. Кочкор"),
        TIManager1Data(text: "с. Ак-Терек"),
      ],
    );
  }
}

class TalasSection extends StatelessWidget {
  const TalasSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Талас"),
        TIManager1Data(text: "с .Ак-Таш"),
        TIManager1Data(text: "с. Ленинполь"),
      ],
    );
  }
}

class DjalalAbadSection extends StatelessWidget {
  const DjalalAbadSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Жалал-Абад"),
        TIManager1Data(text: "г. Токтогул"),
        TIManager1Data(text: "с. Чаткал"),
        TIManager1Data(text: "с. Устье р. Терс"),
        TIManager1Data(text: "с. Казарман"),
        TIManager1Data(text: "с. Пача-Ата"),
        TIManager1Data(text: "с. Чаар-таш"),
      ],
    );
  }
}

class OshSection extends StatelessWidget {
  const OshSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "г. Ош"),
        TIManager1Data(text: "г. Узген"),
        TIManager1Data(text: "с. Гульча"),
        TIManager1Data(text: "с. Кызыл-жар"),
        TIManager1Data(text: "с. Караван"),
        TIManager1Data(text: "с. Сары-таш"),
        TIManager1Data(text: "с. Иркештам"),
        TIManager1Data(text: "с. Доорот-Коргон"),
      ],
    );
  }
}

class BatkenSection extends StatelessWidget {
  const BatkenSection({
    super.key,
    this.onTap,
    required this.progress,
    required this.length,
  });

  final Function(String)? onTap;
  final int progress;
  final int length;

  @override
  Widget build(BuildContext context) {
    return TIManager1(
      text: "Населённый пункт",
      childrenIconPath: Assets.icons.population.path,
      progress: progress,
      length: length,
      onTap: (data) {
        onTap?.call(data);
      },
      children: [
        TIManager1Data(text: "с. Рават"),
        TIManager1Data(text: "г. Кызыл-Кия"),
        TIManager1Data(text: "с. Хайдаркан"),
        TIManager1Data(text: "с. Исфана"),
      ],
    );
  }
}
