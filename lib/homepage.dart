import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final _myBox = Hive.box('mybox');
  // write mehod
  void writeData() {
    _myBox.put(3, 'helllo ');
    print(_myBox.get(1));
  }

  // read method
  void readData() {
    print(_myBox.get(2));
  }

  // delete method
  void deleteData() async {
    await _myBox.delete(1);
    print("Delete is sucessfull");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              onPressed: writeData,
              color: Colors.blue[200],
              child: const Text(
                "write",
              ),
            ),
            MaterialButton(
              onPressed: readData,
              color: Colors.blue[200],
              child: const Text("Read"),
            ),
            MaterialButton(
              onPressed: deleteData,
              color: Colors.blue[200],
              child: const Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}
