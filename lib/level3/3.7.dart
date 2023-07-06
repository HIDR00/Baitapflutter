import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai7 extends StatefulWidget {
  const Bai7({super.key});

  @override
  State<Bai7> createState() => _Bai7State();
}

class _Bai7State extends State<Bai7> {
  TextEditingController list = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bai 7"),
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
                String s = list.text;
                int n = s.length;
                int start = 0, end = 1;
                int low, hi;
                for (int i = 0; i < n; i++) {
                  low = i - 1;
                  hi = i;
                  while (low >= 0 && hi < n && s[low] == s[hi]) {
                    if (hi - low + 1 > end) {
                      start = low;
                      end = hi - low + 1;
                    }
                    low--;
                    hi++;
                  }
                  low = i - 1;
                  hi = i + 1;
                  while (low >= 0 && hi < n && s[low] == s[hi]) {
                    if (hi - low + 1 > end) {
                      start = low;
                      end = hi - low + 1;
                    }
                    low--;
                    hi++;
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("the length of the longest palindrome"),
                          content: Text("$end"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
