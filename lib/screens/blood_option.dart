import 'package:flutter/material.dart';
import 'package:redship_project/screens/scroll.dart';

class BloodOption extends StatefulWidget {
  const BloodOption({super.key});

  @override
  State<BloodOption> createState() => _BloodOptionState();
}

class _BloodOptionState extends State<BloodOption> {
  List<String> bloodGroup = ['AB-ve', 'AB+ve', 'A-ve', 'A+ve', 'B-ve'];
  List<String> bloodType = [
    'Whole Blood',
    'Single Donor Platelet',
    'Plasma',
    'Packed Red Blood Cells',
    'Leukoreduced RBC'
  ];
  List<String> location = [
    'Clover park,lane no-6,sahakar nagar',
    'Cristine avenue, 103 B stanza',
    'Set your Location on map',
  ];
  final Map<int, String?> _selectedItems = {1: null, 2: null, 3: null};

  void _showListDialog({
    required int listNum,
    required List<String> list,
    required String title,
    required Function(String) onSelected,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return _buildDialog(
          list: list,
          title: title,
          selectedItem: _selectedItems[listNum],
          onSelected: (selected) {
            setState(() {
              _selectedItems[listNum] = selected;
              Navigator.pop(context);
              onSelected(selected);
            });
          },
        );
      },
    );
  }

  Widget _buildDialog({
    required List<String> list,
    required String title,
    String? selectedItem,
    required Function(String) onSelected,
  }) {
    return Dialog(
      backgroundColor: const Color(0xffDBE8FC),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      selectedColor: Colors.red,
                      title: Text(
                        list[index],
                        style: const TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 18,
                          // color: Color(0xff797575),
                        ),
                      ),
                      selected: list[index] == selectedItem,
                      onTap: () => onSelected(list[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? _selectedBloodGroup;
  String? _selectedBloodType;
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112.3),
        child: Container(
          height: height * 0.12,
          decoration: const BoxDecoration(
            color: Color(0xFFDBE9FC),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                title: Image.asset(
                  'assets/images/logo.png',
                  height: 70,
                  fit: BoxFit.contain,
                  alignment: Alignment.topLeft,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.2,
            // color: Colors.yellow,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: height * 0.01),
                Image.asset(
                  'assets/images/contact.png',
                  height: height * 0.1,
                ),
                const Text(
                  'ISSUE DETAILS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff37459D),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            // height: ,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Blood Group",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: _selectedBloodGroup != null
                                ? Text(
                                    _selectedBloodGroup!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                : const Text(
                                    "No Blood Group Selected",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: height * 0.06,
                        decoration: BoxDecoration(
                          color: const Color(0xFF37459D),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => _showListDialog(
                            listNum: 1,
                            list: bloodGroup,
                            title: 'Select Blood Group',
                            onSelected: (selected) {
                              setState(() {
                                _selectedBloodGroup = selected;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  const Text(
                    "Blood Type",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: _selectedBloodType != null
                                ? Text(
                                    _selectedBloodType!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                : const Text(
                                    "No Blood Type Selected",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      Container(
                        height: height * 0.06,
                        width: height * 0.06,
                        decoration: BoxDecoration(
                          color: const Color(0xFF37459D),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => _showListDialog(
                            listNum: 2,
                            list: bloodType,
                            title: 'Select Blood Type',
                            onSelected: (selected) {
                              setState(() {
                                _selectedBloodType = selected;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  const Text(
                    "No. of Packed Cells",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const MyCounter(),
                  SizedBox(height: height * 0.02),
                  const Text(
                    "Set your Location",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Container(
                        height: height * 0.06,
                        width: height * 0.06,
                        decoration: BoxDecoration(
                          color: const Color(0xFF37459D),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () => _showListDialog(
                            listNum: 3,
                            list: location,
                            title: 'Select Location',
                            onSelected: (selected) {
                              setState(() {
                                _selectedLocation = selected;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.6,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: _selectedLocation != null
                                ? Text(
                                    _selectedLocation!,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  )
                                : const Text(
                                    "No Blood Type Selected",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: width * 0.45,
                      child: ElevatedButton(
                        style: TextButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(
                                color: Colors.white, width: 0.0),
                          ),
                          backgroundColor: const Color(0xff37459D),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ScrollList(),
                            ),
                          );
                        },
                        child: const Text(
                          "PROCEED",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  MyCounterState createState() => MyCounterState();
}

class MyCounterState extends State<MyCounter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Container(
            height: height * 0.06,
            width: height * 0.06,
            decoration: BoxDecoration(
              color: const Color(0xFF37459D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.remove,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                setState(() {
                  _counter--;
                });
              },
            ),
          ),
          Expanded(
            child: Text(
              "   $_counter",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: height * 0.06,
            width: height * 0.06,
            decoration: BoxDecoration(
              color: const Color(0xFF37459D),
              borderRadius: BorderRadius.circular(8),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                setState(() {
                  _counter++;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
