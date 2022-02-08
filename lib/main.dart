import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Page Trasition'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.fade,
                    ),
                  );
                },
                child: const Text("Faded Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.leftToRight,
                    ),
                  );
                },
                child: const Text("Left To Right Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.rightToLeft,
                    ),
                  );
                },
                child: const Text("Right To Left Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.topToBottom,
                    ),
                  );
                },
                child: const Text("Top To Bottom Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.bottomToTop,
                    ),
                  );
                },
                child: const Text("Bottom To Top Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.scale,
                      alignment: Alignment.bottomCenter,
                    ),
                  );
                },
                child: const Text("Scale Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: SecondScreen(),
                        type: PageTransitionType.size,
                        alignment: Alignment.bottomCenter),
                  );
                },
                child: const Text("Size Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.rotate,
                      alignment: Alignment.center,
                    ),
                  );
                },
                child: const Text("Rotate Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.rightToLeftWithFade,
                    ),
                  );
                },
                child: const Text("Right To Left With Fade Navigation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: SecondScreen(),
                      type: PageTransitionType.leftToRightWithFade,
                    ),
                  );
                },
                child: const Text("Left To Right With Fade Navigation"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
    );
  }
}
