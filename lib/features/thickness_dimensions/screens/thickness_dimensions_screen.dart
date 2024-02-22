import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/screens/my_scaffold_gradiend.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/recommendation_section.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/region_section.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/selected_list_section.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/size_section.dart';
import 'package:zhyluu_ui/features/thickness_dimensions/widgets/ti_manager.dart';
import 'package:zhyluu_ui/gen/assets.gen.dart';

class ThicknessDimensionsScreen extends HookWidget {
  static const routeName = "/thickness-dimensions";

  const ThicknessDimensionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = usePageController(keepPage: false);
    final progress = useState(0);
    final list = useState(<Widget>[]);

    late String cityOrVillage;
    late String floor;
    late String floorCover;
    late String wall;
    late String brickType;
    late String size;
    late String roofCover;

    void nextPage(Widget widget) {
      list.value.add(widget);

      progress.value += 1;

      controller.animateToPage(
        progress.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }

    return MyScaffoldGradient(
      backgroundGradiend: AppColors.backgroundGradient,
      appBar: MyAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: MyBackButton(
            onTap: () {
              context.pop();
            },
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 114),
          Expanded(
            child: PageView(
              controller: controller,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                RegionSection(
                  progress: 0,
                  length: 5,
                  onTap: (data) {
                    // print(data);

                    nextPage(
                      CityVillageSection(
                        name: data,
                        progress: 1,
                        length: 5,
                        onTap: (data) {
                          // print(data);

                          cityOrVillage = data;

                          nextPage(
                            TIManager2(
                              text: "Дом",
                              progress: 2,
                              length: 5,
                              onTap: (data) {
                                // print(data);

                                switch (data) {
                                  case "Стена":
                                    nextPage(
                                      TIManager1(
                                        text: "Стена",
                                        childrenIconPath:
                                            Assets.icons.wallDetails.path,
                                        progress: 3,
                                        length: 6,
                                        onTap: (data) {
                                          // print(data);

                                          wall = data;

                                          switch (data) {
                                            case "Кирпич":
                                              nextPage(
                                                TIManager1(
                                                  text: "Кирпич",
                                                  childrenIconPath:
                                                      Assets.icons.wall.path,
                                                  progress: 4,
                                                  length: 7,
                                                  onTap: (data) {
                                                    // print(data);

                                                    brickType = data;

                                                    switch (data) {
                                                      case "Керамический":
                                                        nextPage(
                                                          SizeSection(
                                                            progress: 7,
                                                            length: 9,
                                                            onTap: (data) {
                                                              // print(data);

                                                              size = data;

                                                              nextPage(
                                                                SelectedListSection(
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  onTap: () {
                                                                    nextPage(
                                                                      RecommendationSection(
                                                                        cityOrVillage:
                                                                            cityOrVillage,
                                                                        fileName:
                                                                            "керамический $size мм",
                                                                      ),
                                                                    );
                                                                  },
                                                                  children: [
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Стена",
                                                                      info:
                                                                          "$wall $brickType",
                                                                    ),
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Толщина стены",
                                                                      info:
                                                                          size,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                        break;
                                                      case "Сплошной":
                                                        nextPage(
                                                          SizeSection(
                                                            progress: 7,
                                                            length: 9,
                                                            onTap: (data) {
                                                              // print(data);

                                                              size = data;

                                                              nextPage(
                                                                SelectedListSection(
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  onTap: () {
                                                                    nextPage(
                                                                      RecommendationSection(
                                                                        cityOrVillage:
                                                                            cityOrVillage,
                                                                        fileName:
                                                                            "сплошной $size мм",
                                                                      ),
                                                                    );
                                                                  },
                                                                  children: [
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Стена",
                                                                      info:
                                                                          "$wall $brickType",
                                                                    ),
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Толщина стены",
                                                                      info:
                                                                          size,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                        break;
                                                      case "Силикатный":
                                                        nextPage(
                                                          SizeSection(
                                                            progress: 7,
                                                            length: 9,
                                                            onTap: (data) {
                                                              // print(data);

                                                              size = data;

                                                              nextPage(
                                                                SelectedListSection(
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  onTap: () {
                                                                    nextPage(
                                                                      RecommendationSection(
                                                                        cityOrVillage:
                                                                            cityOrVillage,
                                                                        fileName:
                                                                            "силикатный $size мм",
                                                                      ),
                                                                    );
                                                                  },
                                                                  children: [
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Стена",
                                                                      info:
                                                                          "$wall $brickType",
                                                                    ),
                                                                    SelectedListSectionData(
                                                                      title:
                                                                          "Толщина стены",
                                                                      info:
                                                                          size,
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                        break;
                                                    }
                                                  },
                                                  children: [
                                                    TIManager1Data(
                                                        text: "Керамический"),
                                                    TIManager1Data(
                                                        text: "Сплошной"),
                                                    TIManager1Data(
                                                        text: "Силикатный"),
                                                  ],
                                                ),
                                              );
                                              break;
                                            case "Газобетон/Пенобетон":
                                              nextPage(
                                                SizeSection(
                                                  progress: 7,
                                                  length: 9,
                                                  onTap: (data) {
                                                    // print(data);

                                                    size = data;

                                                    nextPage(
                                                      SelectedListSection(
                                                        cityOrVillage:
                                                            cityOrVillage,
                                                        onTap: () {
                                                          nextPage(
                                                            RecommendationSection(
                                                              cityOrVillage:
                                                                  cityOrVillage,
                                                              fileName:
                                                                  "Газо- и пенобетон $size мм",
                                                            ),
                                                          );
                                                        },
                                                        children: [
                                                          SelectedListSectionData(
                                                            title: "Стена",
                                                            info: wall,
                                                          ),
                                                          SelectedListSectionData(
                                                            title:
                                                                "Толщина стены",
                                                            info: size,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                            case "Саман/Глинобит":
                                              nextPage(
                                                SizeSection(
                                                  progress: 7,
                                                  length: 9,
                                                  onTap: (data) {
                                                    // print(data);

                                                    size = data;

                                                    nextPage(
                                                      SelectedListSection(
                                                        cityOrVillage:
                                                            cityOrVillage,
                                                        onTap: () {
                                                          nextPage(
                                                            RecommendationSection(
                                                              cityOrVillage:
                                                                  cityOrVillage,
                                                              fileName:
                                                                  "Саман, глинобит $size мм",
                                                            ),
                                                          );
                                                        },
                                                        children: [
                                                          SelectedListSectionData(
                                                            title: "Стена",
                                                            info: wall,
                                                          ),
                                                          SelectedListSectionData(
                                                            title:
                                                                "Толщина стены",
                                                            info: size,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              );
                                          }
                                        },
                                        children: [
                                          TIManager1Data(text: "Кирпич"),
                                          TIManager1Data(
                                              text: "Газобетон/Пенобетон"),
                                          TIManager1Data(
                                              text: "Саман/Глинобит"),
                                        ],
                                      ),
                                    );
                                    break;
                                  case "Пол":
                                    nextPage(
                                      TIManager1(
                                        text: "Пол",
                                        childrenIconPath:
                                            Assets.icons.floorDetails.path,
                                        progress: 3,
                                        length: 6,
                                        onTap: (data) {
                                          // print(data);

                                          floor = data;

                                          switch (data) {
                                            case "Грунт":
                                              nextPage(
                                                TIManager2(
                                                  text: "Покрытие пола",
                                                  progress: 4,
                                                  length: 6,
                                                  subText: data,
                                                  onTap: (data) {
                                                    // print(data);

                                                    floorCover = data;

                                                    nextPage(
                                                      SelectedListSection(
                                                        cityOrVillage:
                                                            cityOrVillage,
                                                        onTap: () {
                                                          switch (data) {
                                                            case "Гранит":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на грунте, Гранит",
                                                                ),
                                                              );
                                                              break;
                                                            case "Дерево":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на грунте, дерево",
                                                                ),
                                                              );
                                                              break;
                                                            case "Линолеум":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на грунте, Линолеум",
                                                                ),
                                                              );
                                                              break;
                                                            case "Паркет":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на грунте, Линолеум",
                                                                ),
                                                              );
                                                              break;
                                                          }
                                                        },
                                                        children: [
                                                          SelectedListSectionData(
                                                            title: "Пол",
                                                            info: floor,
                                                          ),
                                                          SelectedListSectionData(
                                                            title:
                                                                "Покрытие пола",
                                                            info: floorCover,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  children: [
                                                    TIManager2Data(
                                                      text: "Гранит",
                                                      iconPath: Assets
                                                          .icons.marble.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Дерево",
                                                      iconPath: Assets
                                                          .icons.wood.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Линолеум",
                                                      iconPath: Assets.icons
                                                          .linoleumParquet.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Паркет",
                                                      iconPath: Assets
                                                          .icons.ceramics.path,
                                                    ),
                                                  ],
                                                ),
                                              );
                                              break;
                                            case "Железобетон":
                                              nextPage(
                                                TIManager2(
                                                  text: "Покрытие пола",
                                                  progress: 4,
                                                  length: 6,
                                                  subText: data,
                                                  onTap: (data) {
                                                    // print(data);

                                                    floorCover = data;

                                                    nextPage(
                                                      SelectedListSection(
                                                        cityOrVillage:
                                                            cityOrVillage,
                                                        onTap: () {
                                                          switch (data) {
                                                            case "Гранит":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на железобетоне, Гранит",
                                                                ),
                                                              );
                                                              break;
                                                            case "Дерево":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на железобетоне, Дерево",
                                                                ),
                                                              );
                                                              break;
                                                            case "Линолеум":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на железобетоне, Линолеум",
                                                                ),
                                                              );
                                                              break;
                                                            case "Паркет":
                                                              nextPage(
                                                                RecommendationSection(
                                                                  includeClay:
                                                                      false,
                                                                  cityOrVillage:
                                                                      cityOrVillage,
                                                                  fileName:
                                                                      "Пол на железобетоне, Паркет",
                                                                ),
                                                              );
                                                              break;
                                                          }
                                                        },
                                                        children: [
                                                          SelectedListSectionData(
                                                            title: "Пол",
                                                            info: floor,
                                                          ),
                                                          SelectedListSectionData(
                                                            title:
                                                                "Покрытие пола",
                                                            info: floorCover,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                  children: [
                                                    TIManager2Data(
                                                      text: "Гранит",
                                                      iconPath: Assets
                                                          .icons.marble.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Дерево",
                                                      iconPath: Assets
                                                          .icons.wood.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Линолеум",
                                                      iconPath: Assets.icons
                                                          .linoleumParquet.path,
                                                    ),
                                                    TIManager2Data(
                                                      text: "Паркет",
                                                      iconPath: Assets
                                                          .icons.ceramics.path,
                                                    ),
                                                  ],
                                                ),
                                              );
                                          }
                                        },
                                        children: [
                                          TIManager1Data(text: "Грунт"),
                                          TIManager1Data(text: "Железобетон"),
                                        ],
                                      ),
                                    );
                                    break;
                                  case "Перекрытие крыши":
                                    nextPage(
                                      TIManager1(
                                        text: "Перекрытие крыши",
                                        childrenIconPath:
                                            Assets.icons.floorDetails.path,
                                        progress: 3,
                                        length: 5,
                                        onTap: (data) {
                                          // print(data);

                                          roofCover = data;

                                          nextPage(
                                            SelectedListSection(
                                              cityOrVillage: cityOrVillage,
                                              onTap: () {
                                                nextPage(
                                                  RecommendationSection(
                                                    includeClay: false,
                                                    cityOrVillage:
                                                        cityOrVillage,
                                                    fileName:
                                                        "Чердак железобетон",
                                                  ),
                                                );
                                              },
                                              children: [
                                                SelectedListSectionData(
                                                  title: "Перекрытие крыши",
                                                  info: roofCover,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        children: [
                                          TIManager1Data(text: "Железобетон"),
                                        ],
                                      ),
                                    );
                                    break;
                                }
                              },
                              children: [
                                TIManager2Data(
                                  text: "Стена",
                                  iconPath: Assets.icons.wall.path,
                                ),
                                TIManager2Data(
                                  text: "Пол",
                                  iconPath: Assets.icons.floor.path,
                                ),
                                TIManager2Data(
                                  text: "Перекрытие крыши",
                                  iconPath: Assets.icons.roof.path,
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
                ...list.value,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
