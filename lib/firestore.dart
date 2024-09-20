import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore {
  //get collection
  final CollectionReference students =
      FirebaseFirestore.instance.collection('students');
  //create
  Future<void> addStudent(String StdName) {
    return students.add({'studentName': StdName, 'time': Timestamp.now()});
  }

  //read
  Stream<QuerySnapshot> getStudent() {
    final studentData = students.snapshots();
    return studentData;
  }
  //update
  Future<void> updateStudent(String docId,String NewStdName){
    return students.doc(docId).update(
      {
        'studentName': NewStdName,
        'time': Timestamp.now()
      }
    );
  }
  //delete
  Future<void> deleteStudent(String docId){
    return students.doc(docId).delete();
  }
}
