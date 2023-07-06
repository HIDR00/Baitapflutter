import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai6 extends StatefulWidget {
  const Bai6({super.key});

  @override
  State<Bai6> createState() => _Bai6State();
}

class _Bai6State extends State<Bai6> {
  TextEditingController list1 = TextEditingController();
  TextEditingController list2 = TextEditingController();
  double trungvi = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 6"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: list2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<int> tmp1 = List<int>.from(
                    list1.text.split(",").map((e) => int.parse(e)));
                List<int> tmp2 = List<int>.from(
                    list2.text.split(",").map((e) => int.parse(e)));
                List<int> numbers = [];
                numbers.addAll(tmp1);
                numbers.addAll(tmp2);
                numbers.sort();
                if (numbers.length % 2 != 0) {
                  trungvi = numbers[(numbers.length / 2).toInt()] * 1.0;
                } else if (numbers.length % 2 == 0) {
                  trungvi = ((numbers[(numbers.length / 2).toInt() - 1] +
                          numbers[(numbers.length / 2).toInt()]) /
                      2);
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Trung vi:"),
                          content: Text("${trungvi}"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
