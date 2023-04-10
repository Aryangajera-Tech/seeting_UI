import 'package:flutter/material.dart';

TextEditingController _Name = new TextEditingController();
TextEditingController _Password = new TextEditingController();

class exam_2 extends StatefulWidget {
  const exam_2({Key? key}) : super(key: key);

  @override
  State<exam_2> createState() => _exam_2State();
}

class _exam_2State extends State<exam_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'LogIn',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () async {
                  DateTime date = DateTime.now();
                },
                child: TextField(
                  controller: _Name,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Name'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _Password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_Name.toString().isEmpty || _Password.toString().isEmpty) {
                } else {
                  Navigator.pushReplacementNamed(context, "/p");
                }
              },
              child: Container(
                child: Text("LOG IN"),
              ),
            ),
          ],
        )));
  }
}
