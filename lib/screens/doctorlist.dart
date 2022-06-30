import 'package:cough_detection/screens/appoinment.dart';
import 'package:cough_detection/screens/chatwithdoctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DoctorList extends StatelessWidget {
  DoctorList({Key? key}) : super(key: key);

  final doctors = [
    {'name': 'ARUN', 'qualification': 'MD', 'hospital': 'IQRAA'},
    {'name': 'RAM', 'qualification': 'MBBS', 'hospital': 'BABY'},
    {'name': 'REENA', 'qualification': 'MBBS,MD', 'hospital': 'NATIONAL'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(actions: [], title: Text('Doctorlist')),
        body: ListView.builder(
            itemCount: doctors.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                  IconButton(
                      onPressed: () { Navigator.push(context,MaterialPageRoute(builder: (conext)=>Appoinment()));}, icon: Icon(Icons.free_cancellation)),IconButton(onPressed: (){ Navigator.push(context,MaterialPageRoute(builder: (conext)=>chatwithdoctor()));}, icon: Icon(Icons.chat))
                ]),
                title: Text(doctors[index]['name']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(doctors[index]['qualification']!),
                    Text(doctors[index]['hospital']!)
                  ],
                ),
              ));
            }));
  }
}
