import 'package:flutter/material.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatefulWidget {
  HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text('GeeksforGeeks'),
          ),
          body: const FirstScreen()),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          splashColor: Colors.yellow,
          hoverColor: Colors.red,
          elevation: 10,
          heroTag: 'GFG Tag',
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const NewScreen())),
          child: Icon(Icons.perm_camera_mic),
        ),
      ),
    );
  }
}

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('New Screen'),
      ),
      body: Center(
        child: Hero(tag: 'GFG Tag', child: Icon(Icons.save)),
      ),
    );
  }
}
