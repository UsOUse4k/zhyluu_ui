import 'package:excel/excel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:zhyluu_ui/constants/colors.dart';
import 'package:zhyluu_ui/features/common/extensions/build_context_extension.dart';
import 'package:zhyluu_ui/features/common/widgets/my_app_bar.dart';
import 'package:zhyluu_ui/features/common/widgets/my_back_button.dart';
import 'package:zhyluu_ui/features/common/widgets/my_drawer.dart';

class ProsAndCons {
  final String name;
  final String imagePath;

  ProsAndCons({required this.name, required this.imagePath});
}

class MaterialBaseScreen extends StatelessWidget {
  const MaterialBaseScreen({
    super.key,
    required this.title,
    required this.cityOrVillage,
    required this.materialName,
    required this.fileName,
    required this.imagePath,
    required this.pros,
    required this.cons,
  });

  final String title;
  final String imagePath;
  final String cityOrVillage;
  final String materialName;
  final String fileName;
  final List<ProsAndCons> pros;
  final List<ProsAndCons> cons;

  Future<String> getSize() async {
    final file = "$fileName.xlsx";
    print(file);

    ByteData data = await rootBundle.load('assets/data/$file');

    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    var sheetName = excel.tables.keys.first;
    var sheet = excel[sheetName];

    print(sheet.sheetName);

    var cityOrVillageIndex = 0;
    var materialIndex = -1;

    // Find the column index of the material name
    for (var col = 1; col < sheet.maxColumns; col++) {
      var cell =
          sheet.cell(CellIndex.indexByColumnRow(columnIndex: col, rowIndex: 0));
      if (cell.value.toString() == materialName) {
        materialIndex = col;
        break;
      }
    }

    if (materialIndex == -1) {
      return "Материал не найден";
    }

    // Find the row index of the city or village name
    var rowIndex = -1;
    for (var row = 1; row < sheet.maxRows; row++) {
      var cell = sheet.cell(CellIndex.indexByColumnRow(
          columnIndex: cityOrVillageIndex, rowIndex: row));
      if (cell.value.toString() == cityOrVillage) {
        rowIndex = row;
        break;
      }
    }

    if (rowIndex == -1) {
      return "Город или Село не найдено";
    }

    // Get the material size
    var cell = sheet.cell(CellIndex.indexByColumnRow(
        columnIndex: materialIndex, rowIndex: rowIndex));
    var materialSize = cell.value.toString();

    print(materialSize);

    return materialSize;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      endDrawer: const MyDrawer(),
      body: Stack(
        children: [
          Container(
            width: context.screenSize.width,
            height: context.screenSize.height,
            color: AppColors.primary,
          ),
          SingleChildScrollView(
            child: Stack(
              children: [
                Image.asset(imagePath),
                Container(
                  height: 283,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF87A494).withOpacity(0.45),
                        const Color(0xFF369361).withOpacity(0),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 246,
                    bottom: 98,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 55),
                      Row(
                        children: [
                          const SizedBox(width: 26),
                          Text(
                            title,
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: AppColors.secondary,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.7,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              const SizedBox(height: 22),
                              Text(
                                "+",
                                style: GoogleFonts.roboto(
                                  fontSize: 35,
                                  color: AppColors.secondaryDark,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.7,
                                ),
                              ),
                              for (final pro in pros)
                                Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Image.asset(
                                      pro.imagePath,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      pro.name,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                          const SizedBox(width: 50),
                          Column(
                            children: [
                              const SizedBox(height: 9),
                              Text(
                                "-",
                                style: GoogleFonts.roboto(
                                  fontSize: 55,
                                  color: AppColors.secondaryDark,
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 0.7,
                                ),
                              ),
                              for (final con in cons)
                                Column(
                                  children: [
                                    const SizedBox(height: 20),
                                    Image.asset(
                                      con.imagePath,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      con.name,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          const SizedBox(width: 27),
                          Text(
                            "Рекомендуемая толщина:",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: AppColors.secondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          const SizedBox(width: 27),
                          FutureBuilder(
                            future: getSize(),
                            initialData: "...",
                            builder: (context, snapshot) {
                              return Text(
                                "$cityOrVillage-${snapshot.data ?? "Не найдено"}",
                                style: GoogleFonts.poppins(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                              );
                            },
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: MyAppBar(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: MyBackButton(
                        onTap: () {
                          context.pop();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
