import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0.0,
          centerTitle: true,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.verified_sharp,
              size: 20,
              color: Colors.blue,
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              "ایمان حقیقت خواه",
              style: TextStyle(fontSize: 24),
            ),
          ]),
          actions: <Widget>[
            SizedBox(
              width: 10,
            ),
            Icon(Icons.notifications_none_outlined),
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return {'Setting', 'Login', 'SignUp'}.map((String Choice) {
                return PopupMenuItem(value: Choice, child: Text(Choice));
              }).toList();
            })
          ]),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            width: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0xff8A3BEE),
                                Color(0xffF200B7),
                                Color(0xffFE9402)
                              ])),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 67,
                            width: 67,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: Image.asset(
                                  "assets/images/myProfile1.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("8",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("Posts",
                                style: Theme.of(context).textTheme.titleSmall)
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Text(
                              "10,4m",
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              "Follower",
                              style: Theme.of(context).textTheme.titleSmall,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          children: [
                            Text("1K",
                                style: Theme.of(context).textTheme.titleMedium),
                            Text("Following",
                                style: Theme.of(context).textTheme.titleSmall)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "♥ فلاتر",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        Text("پروژه من در حال اجراست"),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            InkWell(
                              child: Text("imanhaqiqatkhah.ir",
                                  style: TextStyle(
                                      color: Color(0xff1B539C),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500)),
                              onTap: () => launch("https://imanhaqiqatkhah.ir"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 40,
                              child: Stack(children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            child: Image.asset(
                                              "assets/images/myProfile2.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 22),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            child: Image.asset(
                                              "assets/images/myProfile4.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50)),
                                          child: Image.asset(
                                            "assets/images/myProfile3.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "Followed by  ",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "بی بی ,",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      Text(
                                        "مولود ,",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      Text(
                                        "بچون حقیقت خواه",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      )
                                    ]),
                                Text(
                                  "و 1 میلیون نفر دیگر",
                                  style: Theme.of(context).textTheme.titleSmall,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 97,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff3597F0),
                              ),
                              child: Center(
                                  child: Text(
                                "Follow",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13,
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: 97,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffEFEFEF),
                              ),
                              child: Center(
                                child: Text(
                                  "Message",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                              width: 97,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffEFEFEF),
                              ),
                              child: Center(
                                  child: Text(
                                "Contact",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              )),
                            ),
                            SizedBox(width: 3),
                            Container(
                              width: 33,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Center(
                                  child: Icon(Icons.person_add_outlined,
                                      size: 22)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 425,
                          height: 101,
                          child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(2),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey[350]),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            height: 67,
                                            width: 67,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                            child: Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50)),
                                                child: Image.asset(
                                                  "assets/images/myProfile13.jpg",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      "RayanFact",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 11),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 17),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.person_pin_outlined, color: Colors.grey),
                            Icon(
                              Icons.video_library_outlined,
                              color: Colors.grey,
                            ),
                            Icon(Icons.window_outlined)
                          ],
                        ),
                        SizedBox(height: 7),
                        Center(
                          child: Container(
                            width: 120,
                            height: 1,
                            color: Colors.black,
                          ),
                        ),
                        Center(
                          child: Wrap(
                            alignment: WrapAlignment.end,
                            spacing: 3,
                            runSpacing: 3,
                            children: [
                              SizedBox(
                                width: 105,
                                height: 105,
                                child:
                                    Image.asset("assets/images/myProfile5.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child:
                                    Image.asset("assets/images/myProfile6.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child:
                                    Image.asset("assets/images/myProfile7.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child:
                                    Image.asset("assets/images/myProfile8.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child:
                                    Image.asset("assets/images/myProfile9.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child: Image.asset(
                                    "assets/images/myProfile10.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child: Image.asset(
                                    "assets/images/myProfile11.jpg"),
                              ),
                              SizedBox(
                                width: 105,
                                height: 105,
                                child: Image.asset(
                                    "assets/images/myProfile12.jpg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
