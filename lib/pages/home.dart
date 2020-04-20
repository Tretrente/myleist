import 'package:firstflutterapp/pages/list.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/pages/new_list.dart';

ListCreation listCreation = ListCreation();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  //Controller for reading input text from text boxes
  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

bool isEmpty(String text) {
    if (text == '')
      return true;
    else
      return false;
}

  void showAlertDialog(){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            backgroundColor: Colors.grey,
            title: Center(
              child: Text(
                'New list!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            content: TextField(
              controller: myController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.lightBlueAccent, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                labelText: 'Insert list name',
              ),
            ),
            actions: <Widget>[
              Row(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                      myController.clear();
                    },
                    label: Text('Delete list'),
                    color: Colors.red[200],
                    icon: Icon(
                      Icons.delete,
                      color: Colors.red[900],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton.icon(
                    onPressed: () {
                      if(isEmpty(myController.text) == false) {
                        setState(() {
                          listCreation.todo.add(
                              listCreation.listBuiler(myController.text));
                        });
                        Navigator.pop(context);
                        myController.clear();
                      }
                    },
                    color: Colors.green[200],
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.green[600],
                    ),
                    label: Text('Save list'),
                  ),
                ),
              ]),
            ],
          );
        });
  }

//Widget with the app home screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Mileyst'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: listCreation.todo
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: Icon(Icons.add),
          backgroundColor: Colors.blue,
      ),
    );
  }
}
