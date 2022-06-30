import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewPrescription extends StatelessWidget {
  const ViewPrescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [], title: Text('Prescription')),
        body: Stack(children: [
          Container(
            height: 600,
            width: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/photo.jpg'),
                    )),
          ),
        ]));
  }
}
