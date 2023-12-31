import 'package:flutter/material.dart';
import 'package:goodcoffee/services/firebase_service.dart';

class AddNamePage extends StatefulWidget{
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage>{

  TextEditingController nameController = TextEditingController(text: '');

  @override
  Widget build(BuildContext contex){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Ingrese el nuevo nombre',
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await addPeople(nameController.text).then((_) {
                  Navigator.pop(context);
              });
            }, 
            child: const Text('Guardar')),
          ],
        ),
      ),
    );
  }
}