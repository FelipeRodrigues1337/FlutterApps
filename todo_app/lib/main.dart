import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/models/item.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    title: "toDoApp",
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
  ));
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _listItem = new List<Item>();

  void remove(int index){
    setState(() {
      _listItem.removeAt(index);
      save();
    });
  }

  Future load() async{
    var prefs = await SharedPreferences.getInstance();
    var data = prefs.getString('data');

    if(data!= null){
      Iterable decoded = json.decode(data);
      List<Item> result = decoded.map((x)=> Item.fromJson(x)).toList();
      setState(() {
        _listItem = result;
      });
    }
  }

  save() async{
    var prefs = await SharedPreferences.getInstance();
    await prefs.setString('data', jsonEncode(_listItem));
  }

  void addTask() {
    if (newTaskCtrl.text.isNotEmpty) {
      setState(() {
        _listItem.add(Item(title: newTaskCtrl.text, done: false));
        newTaskCtrl.text = "";
        newTaskCtrl.clear();
        save();
      });
    }
  }

  var newTaskCtrl = TextEditingController();

  _HomePageState() {
    _listItem=[];
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Nova Tarefa",
            labelStyle: TextStyle(color: Colors.white),
          ),
          controller: newTaskCtrl,
        ),
      ),
      body: ListView.builder(
          itemCount: _listItem.length,
          itemBuilder: (context, index) {
            final list = _listItem[index];
            return Dismissible(
              direction: DismissDirection.startToEnd,
              key: Key(DateTime.now().toString()),
              background: Container(
                color: Colors.red.withOpacity(0.9),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.delete,size: 45.0,color: Colors.white,),
                )
              ),
              child: CheckboxListTile(
                title: Text(list.title),
                value: list.done,
                onChanged: (value) {
                  setState(() {
                    list.done = value;
                    save();
                  });
                },
              ),
              onDismissed: (direction){
                remove(index);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: addTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
