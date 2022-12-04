import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:online_learning_app/widgets/signup_screen/chips_part.dart';
import 'package:online_learning_app/widgets/signup_screen/single_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  @override
  Widget build(BuildContext context) {
    bool? _isChecked = false;

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
          SingleField(
            title: 'Email',
            iconName: Icons.email_outlined,
            obscureText: false,
            keyType: TextInputType.emailAddress,
          ),
          SingleField(
            title: 'Password',
            iconName: Icons.lock_outline,
            obscureText: true,
            keyType: TextInputType.text,
          ),
          SingleField(
            title: 'Phone',
            iconName: Icons.phone_callback,
            obscureText: false,
            keyType: TextInputType.number,
          ),
          ChipsPart(),
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
