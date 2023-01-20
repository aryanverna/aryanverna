import 'package:flutter/material.dart';
import 'package:redship_project/screens/home.dart';
import 'package:redship_project/themes/theme_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const Home(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<String> bloodGroup = ['AB-ve', 'AB+ve', 'A-ve', 'A+ve', 'B-ve'];
//   List<String> bloodType = [
//     'Whole Blood',
//     'Single Donor Platelet',
//     'Plasma',
//     'Packed Red Blood Cells',
//     'Leukoreduced RBC'
//   ];
//   Map<int, String?> _selectedItems = {1: null, 2: null};

//   void _showListDialog({
//     required int listNum,
//     required List<String> list,
//     required String title,
//     required Function(String) onSelected,
//   }) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return _buildDialog(
//           list: list,
//           title: title,
//           selectedItem: _selectedItems[listNum],
//           onSelected: (selected) {
//             setState(() {
//               _selectedItems[listNum] = selected;
//               Navigator.pop(context);
//               onSelected(selected);
//             });
//           },
//         );
//       },
//     );
//   }

//   Widget _buildDialog({
//     required List<String> list,
//     required String title,
//     String? selectedItem,
//     required Function(String) onSelected,
//   }) {
//     return Dialog(
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Container(
//         height: 250,
//         child: Padding(
//           padding: EdgeInsets.all(15),
//           child: Column(
//             children: <Widget>[
//               Text(
//                 title,
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: list.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ListTile(
//                       title: Text(list[index]),
//                       selected: list[index] == selectedItem,
//                       onTap: () => onSelected(list[index]),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   String? _selectedBloodGroup;
//   String? _selectedBloodType;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My App"),
//       ),
//       body: Column(
//         children: <Widget>[
//           Container(
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _selectedBloodGroup != null
//                   ? Text(_selectedBloodGroup!)
//                   : Text("No Blood Group Selected"),
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             child: Text("Select Blood Group"),
//             onPressed: () => _showListDialog(
//               listNum: 1,
//               list: bloodGroup,
//               title: 'Select Blood Group',
//               onSelected: (selected) {
//                 setState(() {
//                   _selectedBloodGroup = selected;
//                 });
//               },
//             ),
//           ),
//           SizedBox(height: 20),
//           Container(
//             width: double.infinity,
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: _selectedBloodType != null
//                   ? Text(_selectedBloodType!)
//                   : Text("No Blood Type Selected"),
//             ),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             child: Text("Select Blood Type"),
//             onPressed: () => _showListDialog(
//               listNum: 2,
//               list: bloodType,
//               title: 'Select Blood Type',
//               onSelected: (selected) {
//                 setState(() {
//                   _selectedBloodType = selected;
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
