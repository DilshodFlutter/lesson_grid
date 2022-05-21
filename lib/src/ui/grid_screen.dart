import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  _GridScreenState createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  final int _gridCount = 2;
  List<int> data = [
    1,
    2,
    3,
    4,
    4,
    4,
    4,
    4,
    4,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      height: 120,
                      child: Center(
                        child: Text(data[index * _gridCount].toString() +
                            "\n" +
                            (index * _gridCount).toString()),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: index * _gridCount + 1 >= data.length
                        ? Container()
                        : Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red)),
                            height: 120,
                            child: Center(
                              child: Text(
                                  data[index * _gridCount + 1].toString() +
                                      "\n" +
                                      (index * _gridCount + 1).toString()),
                            ),
                          ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
              SizedBox(height: 16),
            ],
          );
        },
        itemCount: (data.length + _gridCount - 1) ~/ _gridCount,
      ),
    );
  }
}
