// import 'package:e_commerce/view_model/home_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// class DataSearch extends SearchDelegate {
//   BuildContext context;
//   DataSearch(
//     {required this.context}
//   )
  
//   List searchedSubject = [];

// final provider =Provider.of<HomeViewModel>(context);
//   @override
//   List<Widget>? buildActions(BuildContext context) {
    
//  return [    IconButton(
//           onPressed: () {
//             query = "";
//           },
//           icon: Icon(Icons.clear),color: Colors.blue,)
//   ]; 
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           close(context, null);
//         },
//         icon: Icon(Icons.arrow_back),color: Colors.blue,);
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     return Text("");
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     searchedSubject = controller.subjectsList
//         .where(
//             (e) => e.subjectName.toLowerCase().startsWith(query.toLowerCase()))
//         .toList();

//     if (query == "") {
//       return Center(child: Text("Find subject",style: TextStyle(fontFamily: "Cairo",color: Colors.grey),));
    
  
//     } else {
//       return ListView.builder(
//           itemCount: searchedSubject.length,
//           itemBuilder: (context, index) {
//             return SubjectBook(searchedSubject[index]);
//           });
//     }
//   }
// }
