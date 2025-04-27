import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login/Widgets/custom_bg.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUp> {
  final _formSigninKey = GlobalKey<FormState>();
  bool rememberPasword = true;

  @override
  Widget build(BuildContext context) {
    return CustomBg(
      child: Column(
        children: [
          const Expanded(
              child: SizedBox(
            height: 10,
          )),
          Expanded(
              flex: 6,
              child: Container(
                padding: const EdgeInsets.fromLTRB(25, 30, 25, 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: SingleChildScrollView(
                  child: Form(
                      key: _formSigninKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Get Start !",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 19, 91, 151)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Your name";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                label: const Text("Name"),
                                hintText: "Enter Your Name",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter email";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                label: const Text("Email"),
                                hintText: "Enter Your Email",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Your Paswrod";
                              }
                              return null;
                            },
                            obscureText: true,
                            obscuringCharacter: "*",
                            decoration: InputDecoration(
                                label: const Text("Pasword"),
                                hintText: "Enter Your Paswrod",
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black))),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: rememberPasword,
                                onChanged: (bool? value) {
                                  setState(
                                    () {
                                      rememberPasword = value!;
                                    },
                                  );
                                },
                                activeColor: Colors.blue,
                              ),
                              const Text("Agree to terms and condtions "),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                        const Color.fromARGB(
                                            255, 5, 122, 218))),
                                onPressed: () {
                                  if (_formSigninKey.currentState!.validate() &&
                                      rememberPasword) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text("Processing Data")));
                                  } else if (!rememberPasword) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text("")));
                                  }
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 0.8,
                                color: Colors.grey.withValues(),
                              )),
                              const Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 10,
                                ),
                                child: Text("Get Register"),
                              ),
                              Expanded(
                                  child: Divider(
                                thickness: 0.8,
                                color: Colors.grey.withValues(),
                              ))
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      const FaIcon(FontAwesomeIcons.facebook)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(FontAwesomeIcons.google)),
                              IconButton(
                                  onPressed: () {},
                                  icon:
                                      const FaIcon(FontAwesomeIcons.instagram)),
                              IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(FontAwesomeIcons.yahoo))
                            ],
                          )
                        ],
                      )),
                ),
              )),
        ],
      ),
    );
  }
}
