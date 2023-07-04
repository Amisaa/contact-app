
import 'package:contact_app/features/contacts/presentation%20/widgets/contact_cards.dart';
import 'package:flutter/material.dart';

class ContactSearchDelegate extends SearchDelegate<String> {

   List<String>name;
   List<String> phoneNumber;

   ContactSearchDelegate(this.name, this.phoneNumber);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(
          onPressed: (){
            query = '';
          },
          icon:Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          close(context, '');
        });
  }

   @override
   Widget buildResults(BuildContext context) {
    return searchResultList();
   }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    return searchResultList();
  }
  Widget searchResultList(){
    final resultList = query.isEmpty
    ? []
    : name
         .where((element)=>
         element.toLowerCase().contains(query.toLowerCase()))
    .toList();
    return ListView.builder(
          itemCount:resultList.length,
          itemBuilder: (context , index ) {
            String currentName = resultList[index];
            String contactNumber = phoneNumber[name.indexOf(currentName)];


            return ContactCards(currentName, contactNumber);
          }
            );
          }
          }
