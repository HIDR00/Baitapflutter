import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai5 extends StatefulWidget {
  const Bai5({super.key});

  @override
  State<Bai5> createState() => _Bai5State();
}

class _Bai5State extends State<Bai5> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 5"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<int> numbers = List<int>.from(
                    list.text.split(",").map((e) => int.parse(e)));
                int res = 1;
                numbers.sort();
                for (int i = 0; i < numbers.length && numbers[i] <= res; i++) {
                  res = res + numbers[i];
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text(
                              "the smallest positive integer that cannot be represented as the sum of any subset of the list"),
                          content: Text("$res"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
