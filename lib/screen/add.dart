import 'dart:io';

import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global.dart';
import '../http_services.dart';
import '../model/calendermodel.dart';

class AddPage extends ConsumerStatefulWidget {
  const AddPage({super.key});

  @override
  ConsumerState<AddPage> createState() => _AddPageState();
}

class _AddPageState extends ConsumerState<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return Padding(
                  padding: MediaQuery.of(context).viewInsets,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Column(children: [
                      SizedBox(height: 20),
                      SizedBox(
                          width: 150,
                          height: 50,
                          child: ElevatedButton(
                              onPressed: () async {
                                FilePickerResult? result =
                                    await FilePicker.platform.pickFiles(
                                  withData: true,
                                  type: FileType.custom,
                                  allowedExtensions: ['xls', 'xlsx'],
                                );
                                if (result != null) {
                                  Navigator.pop(context);
                                  File file =
                                      File(result.files.single.path ?? "");
                                  print(file);

                                  print(file);
                                  var bytes = (file).readAsBytesSync();
                                  var excel = Excel.decodeBytes(bytes);
                                  for (var table in excel.tables.keys) {
                                    print(table); //sheet Name
                                    print(excel.tables[table]!.maxCols);
                                    print(excel.tables[table]!.maxRows);
                                    for (var row in excel.tables[table]!.rows) {
                                      print("${row[1]!.value}");
                                      DateTime timesStart =
                                          DateTime.parse("${row[1]!.value}");
                                      DateTime timesEnd =
                                          DateTime.parse("${row[2]!.value}");
                                      Calendermodel temp = Calendermodel(
                                        id: accountInstane!.id,
                                        timesStart: "${row[1]!.value}",
                                        timesEnd: "${row[2]!.value}",
                                        subjectName: "${row[0]!.value}",
                                        locations: "null",
                                        background: "Color(0xff0f8644)",
                                        isAllDay: "false",
                                      );
                                      await createLich(temp);

                                      // getCalender.add(Calendar(
                                      //     timesStart: timesStart,
                                      //     timesEnd: timesEnd,
                                      //     subjectName: "${row[0]!.value}",
                                      //     locations: null,
                                      //     background: Color(0xff0f8644),
                                      //     isAllDay: false));
                                    }
                                  }
                                  ref.read(lichInstane.notifier).changeData();
                                }
                              },
                              child: Text('Thêm')))
                    ]),
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
