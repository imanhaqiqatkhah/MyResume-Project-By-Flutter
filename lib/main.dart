import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter_complete_project/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static ThemeMode themeMode = ThemeMode.dark;
  static bool sunNight = false;
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyApp.themeMode == ThemeMode.light
          ? MyAppThemeConfig.dark().getTheme()
          : MyAppThemeConfig.light().getTheme(),
      home: MyHomePage(
        toggleThemeMode: () {
          setState(() {
            MyApp.sunNight = !MyApp.sunNight;
            if (MyApp.themeMode == ThemeMode.light) {
              if (!MyApp.sunNight) {
                MyApp.themeMode = ThemeMode.dark;
              }
            }
            if (MyApp.themeMode == ThemeMode.dark) {
              if (MyApp.sunNight) {
                MyApp.themeMode = ThemeMode.light;
              }
            }
          });
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function() toggleThemeMode;
  const MyHomePage({super.key, required this.toggleThemeMode});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _SkillType _skill = _SkillType.softwareDesign;
  void updateSelectedSkill(_SkillType skillType) {
    setState(() {
      this._skill = skillType;
    });
  }

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "SoftFact Profile",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          const Icon(Icons.chat_bubble_outline, color: Colors.white),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            child: Icon(Icons.sunny, color: Colors.white),
            onTap: widget.toggleThemeMode,
          ),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
                  child: Container(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset("assets/images/profile.jpg"))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("ایمان حقیقت خواه",
                          style: Theme.of(context).textTheme.titleLarge),
                      const Text("فوق تخصص نرم افزار",
                          style:
                              TextStyle(fontSize: 17, fontFamily: "Schyler")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "شوشتر",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Icon(CupertinoIcons.heart,
                      color: Theme.of(context).primaryColor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: InkWell(
                    child: const Text("imanhaqiqatkhah.ir",
                        style: TextStyle(
                            color: Color(0xff1B539C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    onTap: () => launch("https://imanhaqiqatkhah.ir"),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 10, 25, 15),
              child: Column(
                children: [
                  Text(
                    "••••• نرم افزار کار تخصصی موبایل و لپ تاپ •••••",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("فلش کردن •",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("قفل جیمیل •",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("اپل آیدی •",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("قندشکن •",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("طراحی اپ موبایل •",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("طراحی سایت •",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            Row(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 15,
                ),
                Text("تصویری از مهارت ها",
                    style: Theme.of(context).textTheme.titleMedium),
                const Icon(
                  CupertinoIcons.chevron_down,
                  size: 13,
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Center(
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  direction: Axis.horizontal,
                  children: [
                    Skills(
                      type: _SkillType.softwareDesign,
                      title: "Software Design",
                      isActive: _skill == _SkillType.softwareDesign,
                      shadowColor: const Color.fromARGB(255, 111, 103, 125),
                      imagePath: "assets/images/img1.jpg",
                      onTap: () {
                        updateSelectedSkill(_SkillType.softwareDesign);
                      },
                    ),
                    Skills(
                      type: _SkillType.development,
                      title: "Development",
                      isActive: _skill == _SkillType.development,
                      shadowColor: const Color.fromARGB(255, 161, 153, 149),
                      imagePath: "assets/images/img2.jpg",
                      onTap: () {
                        updateSelectedSkill(_SkillType.development);
                      },
                    ),
                    Skills(
                      type: _SkillType.vpn,
                      title: "VPN",
                      isActive: _skill == _SkillType.vpn,
                      shadowColor: const Color.fromARGB(255, 127, 141, 127),
                      imagePath: "assets/images/img3.jpg",
                      onTap: () {
                        updateSelectedSkill(_SkillType.vpn);
                      },
                    ),
                    Skills(
                      type: _SkillType.iCloud,
                      title: "iCloud",
                      isActive: _skill == _SkillType.iCloud,
                      shadowColor: const Color.fromARGB(255, 106, 121, 147),
                      imagePath: "assets/images/img4.jpg",
                      onTap: () {
                        updateSelectedSkill(_SkillType.iCloud);
                      },
                    ),
                    Skills(
                      type: _SkillType.appleID,
                      title: "AppleID",
                      isActive: _skill == _SkillType.appleID,
                      shadowColor: const Color.fromARGB(255, 169, 167, 148),
                      imagePath: "assets/images/img5.jpg",
                      onTap: () {
                        updateSelectedSkill(_SkillType.appleID);
                      },
                    ),
                    Skills(
                      type: _SkillType.frp,
                      title: "FRP",
                      isActive: _skill == _SkillType.frp,
                      shadowColor: const Color.fromARGB(255, 149, 189, 180),
                      imagePath: "assets/images/img6.png",
                      onTap: () {
                        updateSelectedSkill(_SkillType.frp);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            const SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("اطلاعات کاربری",
                      style: Theme.of(context).textTheme.titleMedium),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          validator: (value) => validateEmail(value),
                          decoration: const InputDecoration(
                              labelText: "Email",
                              prefixIcon: Icon(CupertinoIcons.at)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "پسورد صحیح نیست";
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              labelText: "Password",
                              prefixIcon: Icon(CupertinoIcons.lock)),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Profile()));
                        } else {
                          return null;
                        }
                      },
                      child: const Text(
                        "ورود",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          fontFamily: "Schyler",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Profile()));
                      },
                      child: const Text(
                        "رد کردن",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                          fontFamily: "Schyler",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? validateEmail(String? value) {
    if (value!.isEmpty) {
      return "لطفا ایمیل را وارد کنید";
    } else if (!value.contains("@")) {
      return "لطفا ایمیل را درست وارد کنید";
    } else {
      return null;
    }
  }
}

class Skills extends StatelessWidget {
  final _SkillType type;
  final String title;
  final String imagePath;
  final bool isActive;
  final Color shadowColor;
  final Function() onTap;
  const Skills({
    super.key,
    required this.type,
    required this.title,
    required this.imagePath,
    required this.isActive,
    required this.shadowColor,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    final BorderRadius defaultBorderRadius = BorderRadius.circular(15);
    return InkWell(
      borderRadius: defaultBorderRadius,
      onTap: onTap,
      child: Container(
        width: 110,
        height: 120,
        decoration: isActive
            ? BoxDecoration(borderRadius: defaultBorderRadius, boxShadow: [
                BoxShadow(color: shadowColor.withOpacity(0.4), blurRadius: 70)
              ])
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 85,
              height: 95,
              decoration: isActive
                  ? BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: shadowColor.withOpacity(0.8), blurRadius: 20)
                    ])
                  : null,
              child: Image.asset(imagePath),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SkillType {
  softwareDesign,
  development,
  vpn,
  iCloud,
  appleID,
  frp,
}

class MyAppThemeConfig {
  final Color primaryColor;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backgroundColor;
  final Color appBarColor;
  final Brightness brightness;

  MyAppThemeConfig.light()
      : brightness = Brightness.light,
        primaryTextColor = Colors.black,
        secondaryTextColor = Colors.black87,
        backgroundColor = Colors.white,
        surfaceColor = Color.fromARGB(198, 200, 194, 194),
        appBarColor = Colors.black,
        primaryColor = Colors.white;

  MyAppThemeConfig.dark()
      : brightness = Brightness.dark,
        primaryTextColor = Colors.white,
        secondaryTextColor = Colors.white70.withOpacity(0.8),
        backgroundColor = Colors.black54,
        surfaceColor = Color.fromARGB(198, 164, 160, 160),
        appBarColor = Colors.white,
        primaryColor = Colors.black;

  ThemeData getTheme() {
    return ThemeData(
        dividerColor: surfaceColor,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: AppBarTheme(
          backgroundColor: appBarColor,
          foregroundColor: primaryTextColor,
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(fontSize: 16, color: secondaryTextColor),
          bodyMedium: TextStyle(
              fontSize: 18, fontFamily: "Schyler", color: primaryTextColor),
          titleMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "Schyler",
              color: primaryTextColor),
          titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              fontFamily: "Schyler",
              color: primaryTextColor),
        ),
        primarySwatch: Colors.deepPurple,
        brightness: brightness,
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(primaryColor))),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: surfaceColor));
  }
}
