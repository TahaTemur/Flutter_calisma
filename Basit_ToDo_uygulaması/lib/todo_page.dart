import 'package:flutter/material.dart';
import 'main.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  late TextEditingController textController;
  late List<String> dataList;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    dataList = [];
  }

  @override
  void eklemeSil() {
    super.dispose();
    textController.dispose();
    textController.clear();
  }

  void eklemeYap({required String value}) {
    setState(() {
      dataList.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "Yapılacaklar Listesi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent.withOpacity(0.3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: TextFormField(
                    enabled: true,
                    controller: textController,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      enabled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 100,
                  height: 50,
                  child: ElevatedButton(
                      child: const Center(child: Icon(Icons.add)),
                      onPressed: () {
                          eklemeYap(value: textController.text);
                      }),
                ),
                const SizedBox(width: 5),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: ListView(
                padding: const EdgeInsets.all(3),
                children: (dataList.isNotEmpty||dataList.isEmpty)
                    ? dataList
                    .asMap()
                    .entries
                    .map((e) => Card(
                  elevation: 3,
                  color: Colors.white.withOpacity(1),
                  child: ListTile(
                    trailing: InkWell(
                      onTap: () {
                        setState(() {
                          dataList.remove(e.value);
                        });
                      },
                      child: const Icon(Icons.delete),
                    ),
                    title: Text(e.value),
                    leading: const Icon(Icons.account_tree),
                  ),
                ))
                    .toList()
                    : [Container()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}