import 'package:flutter/material.dart';

void main() {
  // runApp(const Navigation_app());
}

class Navigation_app extends StatefulWidget {
  const Navigation_app({super.key});

  @override
  State<Navigation_app> createState() => _Navigation_appState();
}

class _Navigation_appState extends State<Navigation_app> {
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FORM"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Enter your name"),
            TextField(
              decoration: InputDecoration(
                  labelText: "Domicile",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            Text("Enter father name"),
            TextField(
              decoration: InputDecoration(
                  labelText: "Father name:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            Text("Enter roll number"),
            TextField(
              decoration: InputDecoration(
                  labelText: "Roll number:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  )),
            ),
            Text('Gender:'),
            Radio(
                value: "Male",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }),
            const Text('Male'),
            Radio(
                value: "Female",
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value.toString();
                  });
                }),
            const Text('Female'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const second_screen())));
              },
              child: Text("Submit"),
            )
          ],
        ),
      ),
    );
  }
}

class second_screen extends StatefulWidget {
  const second_screen({super.key});

  @override
  State<second_screen> createState() => _second_screenState();
}

class _second_screenState extends State<second_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FORM"),
        backgroundColor: Colors.orange,
      ),
      body: Center(child: Text("Your response has been submitted")),
    );
  }
}
