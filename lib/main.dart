import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  double sliderValue = 14.0;
  bool isSelected = false;
  bool isUnderline = false;
  int group = 2;

  @override
  Widget build(BuildContext context) {
    print("BUILD!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              data,
              style: TextStyle(
                color: group == 1
                    ? Colors.green
                    : group == 2
                        ? Colors.red
                        : Colors.blue,
                fontSize: sliderValue,
                decoration: isUnderline
                    ? TextDecoration.underline
                    : TextDecoration.none,
              ),
              textAlign:
                  isSelected == true ? TextAlign.justify : TextAlign.left,
            ),
            Slider(
              value: sliderValue,
              min: 10,
              max: 40,
              onChanged: (double value) {
                sliderValue = value;
                setState(() {});
              },
            ),
            // Row(
            //   children: [
            //     Checkbox(
            //       value: isSelected,
            //       onChanged: (bool? mandarina) {
            //         isSelected = mandarina!;
            //         setState(() {});
            //       },
            //     ),
            //     Text(
            //       "Activar cuenta...",
            //     ),
            //   ],
            // ),
            CheckboxListTile(
              value: isSelected,
              title: Text("Justificar texto"),
              subtitle: Text("Puedes justificar el texto principal"),
              onChanged: (bool? value) {
                isSelected = value!;
                setState(() {});
              },
            ),
            CheckboxListTile(
              value: isUnderline,
              title: Text("Subrayar texto"),
              subtitle: Text("Puedes subrayar el texto principal"),
              onChanged: (bool? value) {
                isUnderline = value!;
                setState(() {});
              },
            ),

            RadioListTile(
              value: 1,
              groupValue: group,
              title: Text(
                "Color verde",
              ),
              onChanged: (int? value) {
                group = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: group,
              title: Text(
                "Color rojo",
              ),
              onChanged: (int? value) {
                group = value!;
                setState(() {});
              },
            ),
            RadioListTile(
              value: 3,
              groupValue: group,
              title: Text(
                "Color azul",
              ),
              onChanged: (int? value) {
                group = value!;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
