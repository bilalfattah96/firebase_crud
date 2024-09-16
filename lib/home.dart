import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  final Firestore _firestore = Firestore();
  void OpenModal() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: _textEditingController,
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              _firestore.addStudent(_textEditingController.text);
              _textEditingController.clear();
              Navigator.pop(context);
            },
            child: Text('ADD'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Data'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: OpenModal,
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _firestore.getStudent(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List StudentList = snapshot.data!.docs;
            return ListView.builder(
                itemCount: StudentList.length,
                itemBuilder: (context, index) {
                  //get each student
                  DocumentSnapshot document = StudentList[index];
                  String docId = document.id;
                  //get student from each doc
                  Map<String, dynamic> data =
                      document.data() as Map<String, dynamic>;
                  String StudentText = data['studentName'];
                  //display as a ListTile
                  return ListTile(
                    title: Text(StudentText),
                  );
                });
          } else {
            return Text('No Students');
          }
        },
      ),
    );
  }
}
