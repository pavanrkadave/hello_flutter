import 'package:flutter/material.dart';

class FlutterPage extends StatefulWidget {
  const FlutterPage({super.key});

  @override
  State<FlutterPage> createState() => _FlutterPageState();
}

class _FlutterPageState extends State<FlutterPage> {
  bool isActive = false;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Widgets"),
        actions: [
          IconButton(
              onPressed: () {
                debugPrint("Info Pressed");
              },
              icon: const Icon(Icons.info_outline))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/sea.jpg"),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  "Container Text",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: isActive ? Colors.orange : Colors.amber),
              onPressed: () {
                debugPrint("Elevated Button Pressed");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button Pressed");
              },
              child: const Text("Outlined Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button Pressed");
              },
              child: const Text("Text Button"),
            ),
            GestureDetector(
              onTap: () {
                debugPrint("Row Tapped");
              },
              behavior: HitTestBehavior.opaque,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: isActive ? Colors.blue : Colors.green,
                  ),
                  const Text("Row Widget"),
                  Icon(
                    Icons.flight_class,
                    color: isActive ? Colors.blue : Colors.green,
                  ),
                ],
              ),
            ),
            Switch(
              value: isActive,
              onChanged: (bool switchState) {
                setState(() {
                  isActive = switchState;
                });
              },
            ),
            Checkbox(
              value: isChecked,
              onChanged: (bool? checked) {
                setState(() {
                  isChecked = checked;
                });
              },
            ),
            Image.network("https://picsum.photos/500/500")
          ],
        ),
      ),
    );
  }
}
