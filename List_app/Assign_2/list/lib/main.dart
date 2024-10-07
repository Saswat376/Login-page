import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List name = [
    "List 1",
    "List 2",
    "List 3",
    "List 4",
    "List 5",
    "List 6",
    "List 7",
    "List 8",
    "List 9",
    "List 10",
    "List 11",
    "List 12",
    "List 13",
    "List 14",
    "List 15",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("List View"),
            backgroundColor: Colors.blue,
            centerTitle: true,
            foregroundColor: Colors.black,
          ),
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Text(
                          "${name[index]}",
                          style: const TextStyle(fontSize: 25),
                        ),
                        const Spacer(),
                      ],
                    ));
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                  height: 10,
                  thickness: 1,
                );
              },
              itemCount: name.length),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.arrow_forward),
            onPressed: () {},
          ),
        ));
  }
}
