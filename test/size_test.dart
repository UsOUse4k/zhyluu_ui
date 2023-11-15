import 'dart:io';

import 'package:excel/excel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  test(
    "Get size",
    () async {
      final size =
          await getSize("Кирпич силикатный 200 мм", "Соло-ма", "г. Бишкек");

      expect(size, "177");
    },
  );
}

Future<String> getSize(
    String fileName, String materialName, String cityOrVillage) async {
  final bytes = File('assets/data/$fileName.xlsx').readAsBytesSync();

  var excel = Excel.decodeBytes(bytes);

  var sheetName = excel.tables.keys.first;
  var sheet = excel[sheetName];

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

  return materialSize;
}
