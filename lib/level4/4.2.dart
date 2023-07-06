import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai2 extends StatefulWidget {
  const Bai2({super.key});

  @override
  State<Bai2> createState() => _Bai2State();
}

class _Bai2State extends State<Bai2> {
  TextEditingController list = TextEditingController();
  TextEditingController so = TextEditingController();
  void dist(List<int> a, int n, int sum, int cur, List<int> s) {
    if (cur > n) {
      return;
    }
    if (cur == n) {
      s.add(sum);
      return;
    }
    dist(a, n, sum + a[cur], cur + 1, s);
    dist(a, n, sum, cur + 1, s);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 2"),
      ),
      body: Column(children: [
        TextField(
          controller: list,
          decoration: InputDecoration(
            hintText: "Nhap day so",
            border: OutlineInputBorder(),
          ),
        ),
        TextField(
          controller: so,
          decoration: InputDecoration(
            hintText: "Nhap value",
            border: OutlineInputBorder(),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              List<int> numbers =
                  List<int>.from(list.text.split(",").map((e) => int.parse(e)));
              int target = int.parse(so.text);
              List<int> s = [];
              int count = 0;
              dist(numbers, numbers.length, 0, 0, s);
              for (var i in s) {
                if (i == target) {
                  count++;
                }
              }
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: Text("So luong day con co tong bang value"),
                        content: Text("$count"),
                      ));
            },
            child: Text("nhap"))
      ]),
    );
  }
}
