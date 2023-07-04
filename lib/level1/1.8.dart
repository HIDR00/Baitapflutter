import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai8 extends StatefulWidget {
  const Bai8({super.key});

  @override
  State<Bai8> createState() => _Bai8State();
}

class _Bai8State extends State<Bai8> {
  TextEditingController list = TextEditingController();
  double trungvi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 8"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "Nhap day so cach nhau bang dau ,",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<int> numbers =
                  List<int>.from(list.text.split(",").map((e) => int.parse(e)));
              numbers.sort();
              if (numbers.length % 2 != 0) {
                trungvi = numbers[(numbers.length / 2).toInt() - 1] * 1.0;
              } else if (numbers.length % 2 == 0) {
                trungvi = (numbers[(numbers.length / 2).toInt() - 1] +
                    numbers[(numbers.length / 2).toInt()] / 2);
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("trungvi"),
                        content: Text("$trungvi"),
                      ));
            },
            child: Text("Tim trung vi"))
      ]),
    );
  }
}
