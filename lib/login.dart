import 'package:flutter/material.dart';
import 'package:flutter_complete_project/main.dart';

class Login extends StatefulWidget {
  final Function() toggleThemeMode;
  const Login({super.key, required this.toggleThemeMode});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool male = true;
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        "assets/logo/logo.png",
                        width: 110,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "بــه مــا بـپیـونـدیــد",
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "حساب ایجاد کنید و پروفایل و دسترسی خودتان را به بهترین شکل در اینجا به اشتراک بگذارید",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(111, 71, 60, 60)),
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Form(
                      key: formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "اسم شما وارد نشده است";
                              } else {
                                return null;
                              }
                            },
                            textAlign: TextAlign.end,
                            decoration:
                                InputDecoration(hintText: "نام و نام خانوادگی"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            textAlign: TextAlign.end,
                            decoration: InputDecoration(hintText: "شماره تلفن"),
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "شماره تلفن وارد نشده است";
                              } else if (value.length < 11) {
                                return "شماره تلفن نادرست است";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) => validateEmail(value),
                            textAlign: TextAlign.end,
                            decoration: InputDecoration(hintText: "ایمیل"),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                              obscureText: true,
                              textAlign: TextAlign.end,
                              decoration: InputDecoration(hintText: "پسورد"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "پسورد صحیح نیست";
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              male = !male;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  male == true
                                      ? Color.fromARGB(255, 165, 165, 165)
                                      : Color(0xff42941B))),
                          child: Text(
                            "زن",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Schyler"),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 150,
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              male = !male;
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  male == true
                                      ? Color(0xff42941B)
                                      : Color.fromARGB(255, 165, 165, 165))),
                          child: Text(
                            "مرد",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Schyler"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 50,
                    width: 340,
                    child: TextButton(
                        style: Theme.of(context)
                            .textButtonTheme
                            .style!
                            .copyWith(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffC66DF3))),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => MyHomePage(
                                      toggleThemeMode: () {
                                        setState(() {
                                          MyApp.sunNight = !MyApp.sunNight;
                                          if (MyApp.themeMode ==
                                              ThemeMode.light) {
                                            if (!MyApp.sunNight) {
                                              MyApp.themeMode = ThemeMode.dark;
                                            }
                                          }
                                          if (MyApp.themeMode ==
                                              ThemeMode.dark) {
                                            if (MyApp.sunNight) {
                                              MyApp.themeMode = ThemeMode.light;
                                            }
                                          }
                                        });
                                      },
                                    )));
                          } else {
                            return null;
                          }
                        },
                        child: Text(
                          "به مـا بـپیـونـدیـد",
                          style: TextStyle(
                              color: Colors.white, fontFamily: "Schyler"),
                        )),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("وارد شوید"),
                      Text("  از قبل حساب دارید؟",
                          style: TextStyle(color: Color(0xff64D2FF)))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "لطفا ایمیل را وارد کنید";
    } else if (!value.contains("@")) {
      return "لطفا ایمیل را درست وارد کنید";
    }
    return null;
  }
}
