import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai1 extends StatefulWidget {
  const Bai1({super.key});

  @override
  State<Bai1> createState() => _Bai1State();
}

class _Bai1State extends State<Bai1> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 1"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list,
            decoration: InputDecoration(),
          ),
          ElevatedButton(
              onPressed: () {
                int dem = 0;
                List<int> numbers = List<int>.from(
                    list.text.split(",").map((e) => int.parse(e)));
                for (int i = 0; i < numbers.length; i++) {
                  for (int j = i + 1; j < numbers.length; j++) {
                    if (numbers[i] > numbers[j]) {
                      int tmp = numbers[i];
                      numbers[i] = numbers[j];
                      numbers[j] = tmp;
                      dem++;
                    }
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("So lan sap xep"),
                          content: Text("$dem"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
