import 'package:flutter/material.dart';

void main() {
  ;
  runApp(const Grid_app());
}

class Grid_app extends StatefulWidget {
  const Grid_app({Key? key}) : super(key: key);

  @override
  State<Grid_app> createState() => _Grid_appState();
}

class _Grid_appState extends State<Grid_app> {
  double sliderValue = 0;
  String? level;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter_app"),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text("Grid"),
                  ),
                  Tab(
                    child: Text("Skills"),
                  ),
                  Tab(
                    child: Text("Level"),
                  ),
                ],
              ),
            ),
            drawer: Drawer(),
            body: TabBarView(
              children: [
                GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  children: [
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                    FlutterLogo(),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Rate your flutter skills"),
                    Slider(
                      value: sliderValue,
                      min: 0,
                      max: 100,
                      onChanged: (double value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Level:"),
                    Radio(
                        value: "newbie",
                        groupValue: level,
                        onChanged: (value) {
                          setState(() {
                            level = value.toString();
                          });
                        }),
                    const Text("Newbie"),
                    Radio(
                        value: "Pro",
                        groupValue: level,
                        onChanged: (value) {
                          setState(() {
                            level = value.toString();
                          });
                        }),
                    const Text("Pro"),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
