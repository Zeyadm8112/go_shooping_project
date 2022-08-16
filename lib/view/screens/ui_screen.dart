// import 'package:e_commerce/view/screens/profile_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class MyUi extends StatefulWidget {
//   MyUi({Key? key}) : super(key: key);

//   @override
//   State<MyUi> createState() => _MyUiState();
// }

// class _MyUiState extends State<MyUi> {
//   get action => null;

//   get child => null;

//   get list => null;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         toolbarHeight: 120,
//         centerTitle: true,
//         backgroundColor: Colors.pink,
//         title: const Text("Home", style: TextStyle(fontSize: 40,
//           color: Colors.white,
//           fontStyle: FontStyle.italic,
//           fontWeight: FontWeight.bold,),
//         ),
//         leading: IconButton(onPressed: () {
//           Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const SettingController()),
//           );
//         }, icon: const Icon(Icons.menu,)),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag,),
//           ),
//         ],

//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 TextField(
//                   decoration: InputDecoration(
//                     hintText: "type a product Name",
//                     fillColor: Colors.purple,
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(35.0)

//                     ),
//                     suffixIcon: const Icon(
//                         Icons.search
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                   width: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: const [
//                      Text(
//                         "Category:",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,)),
//                      Text(
//                         "See All (9)",
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,)),
//                   ],
//                 ),
//               ],
//             ),

//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.zero,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.cyan,
//                     child: Image.asset(
//                         "assets/images/7b5fd9f074cf1ec3709271398dcf653a.jpg"),
//                   ),
//                 ),
//                 ClipRRect(
//                   borderRadius: BorderRadius.zero,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.cyan,
//                     child: Image.asset(
//                         "assets/images/627a73ab619010e5cb47a574_free-jewelry-logo-maker.png"),
//                   ),
//                 ),
//                 ClipRRect(
//                   borderRadius: BorderRadius.zero,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     color: Colors.cyan,
//                     child: Image.asset("assets/images/download (1).png"),
//                   ),
//                 ),
//               ],
//             ),
//             ClipRRect(
//               borderRadius: BorderRadius.zero,
//               child: Container(
//                 height: 150,
//                 width: 375,
//                 color: Colors.pink,
//                 child: Image.asset("assets/images/download (2).png"),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//               width: 10,

//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 Text(
//                   "popular:",
//                   style: TextStyle(fontSize: 20,
//                       color: Colors.black,
//                       fontWeight: FontWeight.bold),),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//               width: 10,

//             ),
//             StaggeredGrid.count(
//               mainAxisSpacing: 10.0,
//               crossAxisSpacing: 8.0,
//               crossAxisCount: 2,
//               children: List.generate(25, (index) => buildGridProduct(context)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// }

// Widget buildGridProduct(context) => Card(
//   elevation: 3.0,
//   shadowColor: Colors.deepPurple,
//   clipBehavior: Clip.antiAliasWithSaveLayer,
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Stack(
//         children: [
//           const Image(
//             image: NetworkImage('https://picsum.photos/200/300?random=3'),
//             width: double.infinity,
//             height: 200,
//             fit: BoxFit.cover,
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             child: Container(
//               padding: const EdgeInsets.symmetric(horizontal: 5),
//               decoration: const BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(5),
//                   bottomLeft: Radius.circular(5),
//                 ),
//               ),
//               child: const Text(
//                 '%20 OFF',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       const SizedBox(height: 10),
//       Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Product Name',
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(
//                 fontSize: 16,
//                 height: 1.2,
//               ),
//             ),
//             Row(
//               children: [
//                 Column(
//                   children: const [
//                     Text(
//                       '2000 L.E',
//                       style: TextStyle(
//                         fontSize: 14.0,
//                         color: Colors.deepPurple,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       '300 L.E',
//                       style: TextStyle(
//                         fontSize: 12.0,
//                         color: Colors.grey,
//                         fontWeight: FontWeight.bold,
//                         decoration: TextDecoration.lineThrough,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const Spacer(),
//                 IconButton(
//                   padding: const EdgeInsets.all(0),
//                   onPressed: () {},
//                   icon: const Icon(Icons.add_shopping_cart),
//                 ),
//                 IconButton(
//                   splashRadius: 10,
//                   padding: const EdgeInsets.all(0),
//                   icon: const Icon(Icons.favorite),
//                   color: Colors.deepPurple,
//                   onPressed: () {},
//                 ),
//                 //add to cart
//               ],
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// );