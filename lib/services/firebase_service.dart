import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

//Mostrar Datos
Future<List> getPeople() async {
  List people = [];

  QuerySnapshot querySnapshot = await db.collection('personas').get();
  for (var doc in querySnapshot.docs) {
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      'name': data['name'],
      'uid': doc.id,
    };
    people.add(person);
  }

  return people;
}

//Guardar nombre en base de datos
Future<void> addPeople(String name) async {
  await db.collection('personas').add({'name': name});
}

//Actualizar un nombre en la base de datos
Future<void> updatePeople(String uid, String newName) async {
  await db.collection('personas').doc(uid).set({'name': newName});
}

//Eliminar datos de firebase
Future<void> deletePeople(String uid) async {
  await db.collection('personas').doc(uid).delete();
}
