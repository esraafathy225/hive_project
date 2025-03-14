import 'package:flutter/material.dart';
import 'package:untitled4/components/dialog_box.dart';
import 'package:untitled4/components/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _controller = TextEditingController();
  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox(controller:_controller , onCancel: (){}, onSave: (){},);
    });
  }

  @override
  Widget build(BuildContext context) {
    List todoList = [
      ['Task 1', true],
      ['Task 2', false]
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'ToDo App',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.settings),
                ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
                taskName: todoList[index][0],
                isCompleted: todoList[index][1],
                onChanged: (value) => {});
          }),
    );
  }
}
