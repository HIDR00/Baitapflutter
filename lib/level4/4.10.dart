import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai10 extends StatefulWidget {
  const Bai10({super.key});

  @override
  State<Bai10> createState() => _Bai10State();
}

class _Bai10State extends State<Bai10> {
  TextEditingController list1 = TextEditingController();
  TextEditingController list2 = TextEditingController();
  int max(int a, int b) {
    if (a > b) {
      return a;
    }
    return b;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController list1 = TextEditingController();
    TextEditingController list2 = TextEditingController();
    TextEditingController list3 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 10"),
      ),
      body: Column(
        children: [
          TextField(
            controller: list1,
            decoration: InputDecoration(
              hintText: "chuoi a",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: list2,
            decoration: InputDecoration(
              hintText: "chuoi b",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: list3,
            decoration: InputDecoration(
              hintText: "nhap so ki tu toi thieu",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                String s1 = list1.text;
                String s2 = list2.text;
                int s3 = int.parse(list3.text);
                List<List<int>> F = List.generate(
                  s1.length + 1,
                  (_) => List<int>.filled(s2.length + 1, 0),
                );

                for (int i = 0; i <= s1.length; i++) {
                  for (int j = 0; j <= s2.length; j++) {
                    if (i == 0 || j == 0) {
                      F[i][j] = 0;
                    } else {
                      if (s1[i - 1] == s2[j - 1]) {
                        F[i][j] = F[i - 1][j - 1] + 1;
                      } else {
                        F[i][j] = max(F[i - 1][j], F[i][j - 1]);
                      }
                      if (F[i][j] != F[i - 1][j - 1] + 1) {
                        F[i][j] = 0;
                      }
                    }
                  }
                }
                List<int> res = [];
                res.add(1);
                for (int i = 1; i <= s1.length; i++) {
                  for (int j = 1; j <= s2.length; j++) {
                    if (F[i - 1][j - 1] + 1 == F[i][i] && i == j) {
                      res.add(F[i][j]);
                    }
                  }
                }
                String s;
                if (res.last >= s3) {
                  s = res.last.toString();
                } else {
                  s = "Khong co";
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("Xau con dai nhat"),
                          content: Text("$s"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
