import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Bai7 extends StatefulWidget {
  const Bai7({super.key});

  @override
  State<Bai7> createState() => _Bai7State();
}

class _Bai7State extends State<Bai7> {
  TextEditingController key = TextEditingController();
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
            controller: key,
            decoration: InputDecoration(
              hintText: "Nhap key cach nhau boi dau ,",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: list,
            decoration: InputDecoration(
              hintText: "Nhap collecton cach nhau boi dau ,",
              border: OutlineInputBorder(),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                List<String> Key =
                    List<String>.from(key.text.split(",").map((e) => e));
                List<String> s =
                    List<String>.from(list.text.split(",").map((e) => e));
                List<List<String>> result = [[]];
                int k = 0;
                int dem = 0;
                for (int i = 0; i < s.length; i++) {
                  for (int j = 0; j < Key.length; j++) {
                    if (s[i].contains(Key[j])) {
                      if (dem % Key.length == 0 && dem > 0) {
                        result.add([]);
                        k++;
                      }
                      result[k].add(s[i]);
                      dem++;
                    }
                  }
                }
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text("MapKey"),
                          content: Text("$result"),
                        ));
              },
              child: Text("Nhan"))
        ],
      ),
    );
  }
}
