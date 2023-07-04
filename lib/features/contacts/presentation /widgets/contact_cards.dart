

import 'package:flutter/material.dart';

class ContactCards extends StatelessWidget {
  String name,phoneNumber;
   ContactCards(this.name,this.phoneNumber);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Card(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0)),
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
    leading: Icon(Icons.person, color: Colors.red,),
    minLeadingWidth: 20,
    title: Text(name),
    subtitle: Text(phoneNumber),

    trailing: IconButton(
    icon: Icon(Icons.call, color: Colors.green,),
    onPressed: () {},),


    ),
    ),
    ),
    );
  }
}
