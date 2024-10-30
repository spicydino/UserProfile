import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Stack(
        children: [
          background(),
          profilePage(),
          Positioned(
              top: 100,
              left: 130,
              child: ClipOval(
                child: Container(
                  height: 130,
                  width: 130,
                  child: Image.asset(
                    'assets/daddyAdi.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Stack profilePage() {
    return Stack(
      children: [
        Positioned(
          top: 150,
          left: 20,
          right: 20,
          bottom: 35,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Aditya Koparkar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      'Engineering Student',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.5), fontSize: 15),
                    ),
                  ],
                ),
                Socialmedias(),
                followingText(),
                peopleyk(),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 12.0,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0))),
                    child: const Text('Follow me')),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding peopleyk() {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade50,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/inesh.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/tushar.jpg',
                      height: 55,
                      width: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/aarya.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/kanishka.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/kunal.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipOval(
                    child: Image.asset(
                      'assets/asmi.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Few peoples you may know',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row followingText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              '420',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Followings',
              style:
                  TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              '240k',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Followers',
              style:
                  TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)),
            ),
          ],
        )
      ],
    );
  }

  Padding Socialmedias() {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.instagram,
              size: 26,
            ),
            onPressed: () {
              // Instagram action
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.facebook,
              size: 26,
            ),
            onPressed: () {
              // Facebook action
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.twitter,
              size: 26,
            ),
            onPressed: () {
              // Twitter action
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.linkedin,
              size: 26,
            ),
            onPressed: () {
              // Twitter action
            },
          ),
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.pinterest,
              size: 26,
            ),
            onPressed: () {
              // Twitter action
            },
          ),
        ],
      ),
    );
  }
}

class background extends StatelessWidget {
  const background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage('assets/background.png'));
  }
}
