// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BottomTab extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _BottomTab();
//   }
// }

// class _BottomTab extends State<BottomTab> {
//   int _selectedTabIndex = 0;

//   List _pages = [
//     Text("Home"),
//     Text("Settings"),
//     Text("Wallet"),
//   ];

//   _changeIndex(int index) {
//     setState(() {
//       _selectedTabIndex = index;
//       print("index..." + index.toString());
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 70,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30), topLeft: Radius.circular(30)),
//           boxShadow: [
//             BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//           ],
//         ),
//         child: ClipRRect(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(30.0),
//             topRight: Radius.circular(30.0),
//           ),
//           child: BottomNavigationBar(
//             showSelectedLabels: false,
//             currentIndex: _selectedTabIndex,
//             onTap: _changeIndex,
//             type: BottomNavigationBarType.fixed,
//             selectedFontSize: 0,
//             unselectedFontSize: 0,
//             selectedItemColor: Color.fromRGBO(159, 108, 255, 1),
//             unselectedItemColor: Colors.black54,
//             showUnselectedLabels: true,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: new Icon(
//                   Icons.person_2_outlined,
//                   size: 40,
//                 ),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.settings_outlined,
//                   size: 40,
//                 ),
//                 label: 'Settings',
//               ),
//               BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.wallet_outlined,
//                     size: 40,
//                   ),
//                   label: 'Wallet'),
//             ],
//           ),
//         ));
//   }
// }
