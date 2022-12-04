import 'package:flutter/material.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:online_learning_app/model/interest.dart';

class ChipsPart extends StatelessWidget {
  const ChipsPart({super.key});

  @override
  Widget build(BuildContext context) {
    List _interest = [
      Interest(id: 1, name: 'Photoshop'),
      Interest(id: 2, name: 'Coding'),
      Interest(id: 3, name: 'Hacking'),
      Interest(id: 4, name: 'Cloud'),
      Interest(id: 5, name: 'Designing'),
      Interest(id: 6, name: 'Cooking'),
      Interest(id: 7, name: 'Beautician'),
      Interest(id: 8, name: 'Health'),
      Interest(id: 9, name: 'Lifestyle'),
      Interest(id: 10, name: 'Tailoring'),
      Interest(id: 11, name: 'Data Science'),
      Interest(id: 12, name: 'Hadoop'),
      Interest(id: 13, name: 'Photography')
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              blurStyle: BlurStyle.inner,
              spreadRadius: 1,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: MultiSelectDialogField(
            items: _interest.map((e) => MultiSelectItem(e, e.name)).toList(),
            listType: MultiSelectListType.CHIP,
            dialogHeight: 200,
            checkColor: Colors.blueGrey,
            confirmText: Text('Confirm'),
            backgroundColor: Colors.white,
            barrierColor: Colors.deepPurpleAccent,
            isDismissible: false,
            itemsTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
            buttonText: Text(
              'Area of Interest to learn',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19,
              ),
            ),
            chipDisplay: MultiSelectChipDisplay(
              chipColor: Colors.deepPurple,
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            onConfirm: (values) {},
          ),
        ),
      ),
    );
  }
}
