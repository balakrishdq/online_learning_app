import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:multi_select_flutter/util/multi_select_list_type.dart';
import 'package:online_learning_app/model/interest.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    bool? _isChecked = false;
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

    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(10),
          Text(
            'Signup',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Gap(30),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120,
                  child: Container(
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
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: 'First Name',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
                Gap(35),
                SizedBox(
                  width: 120,
                  child: Container(
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
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Last Name',
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Container(
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
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  suffixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Container(
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
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  suffixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Container(
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
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Phone',
                  suffixIcon: Icon(
                    Icons.phone_callback,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ),
          Padding(
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
                  items:
                      _interest.map((e) => MultiSelectItem(e, e.name)).toList(),
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
          ),
          Gap(20),
          Row(
            children: [
              Checkbox(
                value: _isChecked,
                activeColor: Colors.deepPurple,
                checkColor: Colors.deepPurple,
                onChanged: (bool? newBool) {
                  setState(() {
                    _isChecked = newBool!;
                  });
                },
              ),
              Text(
                'Accept our Terms and Conditions',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
