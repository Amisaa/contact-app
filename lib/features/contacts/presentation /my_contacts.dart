import 'package:contact_app/features/contacts/data/data.dart';
import 'package:contact_app/features/contacts/presentation%20/contact_search_delegate.dart';
import 'package:contact_app/features/contacts/presentation%20/widgets/contact_cards.dart';
import 'package:flutter/material.dart';

class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  List<Contacts> frnDetails=[
    Contacts("Amisha sanjel","9843800820"),
    Contacts("Ishan Shrestha","9851905290"),
    Contacts("Nabin karki","3793598"),
    Contacts("Iza kc","734698398"),
    Contacts("Icchita ","73648932"),
    Contacts("Gaurav","3443543"),
    Contacts("Aayojana","973822"),
    Contacts("Kinjalk","83792222"),
    Contacts("Divyanshu","834309"),
    Contacts("Anil","837492"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [

          IconButton(
              onPressed: (){
                showSearch(context: context, delegate:
                ContactSearchDelegate(
                  frnDetails.map((e) => e.name).toList(),
                  frnDetails.map((e) => e.phoneNumber).toList(),

                ));

              }, icon: Icon(Icons.search))


        ],
      ),
      body:ListView.builder(
          itemCount:frnDetails.length,
          itemBuilder: (context , index ){
            return ContactCards(frnDetails[index].name, frnDetails[index].phoneNumber);
          }
      ),
    );
  }
}
