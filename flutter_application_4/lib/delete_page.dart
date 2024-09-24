import 'package:flutter/material.dart';
import 'package:flutter_application_3/main.dart';



class DeletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Вы уверенны')),
      body: Center(
        child: Column(children: [
        ElevatedButton(onPressed: (){
        Navigator.pop(context);
      }, child: const Text('Нет')),
      const SizedBox(height: 8,),
      ElevatedButton(onPressed: (){
        print('eafsf'); //Как удалить элемент список??????????????????????????????????????
      }, 
      child: const Text('Да'))

        ],)

      ),
    );
  }
}