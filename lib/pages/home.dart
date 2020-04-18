import 'package:firstflutterapp/pages/list.dart';
import 'package:flutter/material.dart';
import 'package:firstflutterapp/pages/new_list.dart';

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


  //Widget for the creation of a new list.
  Widget list_creation(String list){
    return Card(
      color: Colors.grey,
      elevation: 5.00,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Container(
        child: ListTile(
          title: Text(
            "$list",
          ),
        )
      ),
    );
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
                      //TODO make this button close the alert dialog
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
                      //TODO make this button save the input text form the text box
                      //and create a new card with the list name
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
          children: <Widget>[
            
          ],
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
