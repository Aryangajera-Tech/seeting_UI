import 'package:flutter/material.dart';

List any = [
  ['kripal', 1, 20],
  ['seema', 2, 19],
  ['pooja', 3, 21],
];

class exam_3 extends StatefulWidget {
  const exam_3({Key? key}) : super(key: key);

  @override
  State<exam_3> createState() => _exam_3State();
}

class _exam_3State extends State<exam_3> {
  final pages = [
    const Page1(),
    const Page2(),
  ];

  // List studentData = [
  //   {"name": "kripal gajera", "enroll": 23001, "age": 18},
  //   {"name": "seema savliya", "enroll": 23002, "age": 19},
  //   {"name": "pooja surani", "enroll": 23003, "age": 18},
  // ];
  // int index = 0;
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: pages[pageIndex],
        bottomNavigationBar: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.home_filled,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.work_rounded,
                        color: Colors.white,
                        size: 35,
                      )
                    : const Icon(
                        Icons.work_outline_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
              ),
            ],
          ),
        ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView(
          children: [
            std(any[0]),
            std(any[1]),
            std(any[2]),
            std(any[0]),
            std(any[1]),
            std(any[2]),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 3,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              );
            },
            itemCount: 25,
          ),
        ),
      ),
    );
  }
}

class std extends StatelessWidget {
  var q;
  // ,this.r,this.e
  std(this.q);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue.shade200.withOpacity(0.5),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Row(
        children: [
          Icon(
            Icons.account_circle,
            size: 40,
            color: Colors.black,
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name:${q[0]}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  'R.No:${q[1]}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                Text(
                  'age:${q[2]}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          )),
          Icon(
            Icons.more_vert,
            size: 40,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
