import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:music_app/custom_components/btn.dart';
import 'package:music_app/screens/home/bottom_nav_bar.dart';
import 'package:music_app/screens/sign_up.dart';

class txtfield extends StatefulWidget {
  const txtfield({Key? key}) : super(key: key);

  @override
  _txtfieldState createState() => _txtfieldState();
}

class _txtfieldState extends State<txtfield> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  validate() {
    if (formkey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return bottom_nav_bar();
        }),
      );
    } else {
      print("Not validate");
    }
  }

  String? validatepass(value) {
    if (value!.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Should be atleast 6 characters";
    } else if (value.length > 15) {
      return "Should not be more than 15 characters";
    } else {
      return null;
    }
  }

  TextEditingController emailController = TextEditingController();
  String email = '';
  String password = '';
  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Form(
              autovalidate: true,
              key: formkey,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      cursorColor: Colors.deepPurple,
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Email is required"),
                        EmailValidator(errorText: "Please enter valid email.")
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                        cursorColor: Colors.deepPurple,
                        decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                        validator: validatepass),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  btn_(
                    btn_txt: "LOGIN",
                    press: validate,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {},
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.black54),
                          )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
