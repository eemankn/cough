import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Appoinment extends StatelessWidget {
  Appoinment({Key? key}) : super(key: key);

  final appoinments = ['10:00-10:30', '10:30-11:00', '11:00-11:30', '11:30-12:00'];
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
       appBar: AppBar(actions: [], title: Text('Appoinment')),
      body: Column(children: [
        Text('Doctor'),
        Text("User"),
        Container(height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: appoinments.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Chip(label:Text(appoinments[index])),
              );
            },),
        ),
        ElevatedButton(onPressed: () {}, child: Text('BOOK')),
      ],),
    );
  }
}
