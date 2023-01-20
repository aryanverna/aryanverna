import 'package:flutter/material.dart';
import 'package:redship_project/screens/confirm_order.dart';

class ScrollList extends StatefulWidget {
  const ScrollList({super.key});

  @override
  State<ScrollList> createState() => _ScrollListState();
}

class _ScrollListState extends State<ScrollList> {
  final List<String> _titles = [
    'PSI blood bank',
    'PSI blood bank',
    'PSI blood bank',
    'Red cross society ',
    'Noble blood bank',
    'PSI blood bank',
    'Red cross society ',
    'PSI Hospital Phase 2',
  ];

  final List<String> _subtitles = [
    'Vinayak nagar, Rasta peth opposite\n to omkar tours and travels',
    'Vinayak nagar, Rasta peth opposite\n to omkar tours and travels',
    'Vinayak nagar, Rasta peth opposite\n to omkar tours and travels',
    'Palgum associate, koregaon park\n lane no 4. Pune',
    'Aakashwani building,                       \nHadapsar.',
    'Palgum associate, koregaon park\n lane no 4. Pune',
    'Vinayak nagar, Rasta peth opposite\n to omkar tours and travels',
    'Vinayak nagar, Rasta peth opposite\n to omkar tours and travels'
  ];

  final List<String> _icons = [
    'assets/images/blood_loc.png',
    'assets/images/blood_loc.png',
    'assets/images/hos_loc.png',
    'assets/images/blood_loc.png',
    'assets/images/hos_loc.png',
    'assets/images/hos_loc.png',
    'assets/images/blood_loc.png',
    'assets/images/hos_loc.png',
  ];

  final List<int> _distances = [
    2,
    2,
    2,
    3,
    4,
    3,
    3,
    5,
  ];

  final List<int> _quantities = [
    3,
    3,
    6,
    8,
    6,
    2,
    3,
    6,
  ];

  int? _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index == _selectedIndex ? null : index;
    });
    if (_selectedIndex != null) {
      showGeneralDialog(
        context: context,
        barrierDismissible: true,
        transitionDuration: const Duration(milliseconds: 500),
        barrierLabel: MaterialLocalizations.of(context).dialogLabel,
        barrierColor: Colors.black.withOpacity(0.5),
        pageBuilder: (context, _, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  // color: Colors.blue,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          color: Color(0xff37459D),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/tick.png',
                                    height: 40,
                                  ),
                                  const Text(
                                    'Your Request has been Accepted, \nto continue',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const Alignment(1.0, 1.0),
                                child: SizedBox(
                                  width: 180,
                                  child: ElevatedButton(
                                    style: TextButton.styleFrom(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                            color: Colors.white, width: 3.0),
                                      ),
                                      backgroundColor: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Lexend-Thin"),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ConfirmOrder(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "ORDER NOW",
                                      style:
                                          TextStyle(color: Color(0xff37459D)),
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
                ),
              ),
            ],
          );
        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
            ).drive(Tween<Offset>(
              begin: const Offset(0, -1.0),
              end: Offset.zero,
            )),
            child: child,
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.08),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff37459D),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const <Widget>[
              Text(
                'Koregaon Park,Pune',
                style: TextStyle(
                  // fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'Lane No.6,Inlaks and Budhrani hospital',
                style: TextStyle(
                  // fontSize: 22,
                  fontWeight: FontWeight.w100,
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _titles.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () => _onItemTapped(index),
                child: Padding(
                  padding: const EdgeInsets.only(right: 4, top: 8, bottom: 4),
                  child: Container(
                    height: height * 0.1,
                    // width: 200,
                    decoration: BoxDecoration(
                      color: index == _selectedIndex
                          ? const Color(0xffFCD1D2)
                          : const Color(0xffDBE9FC),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          _icons[index],
                          height: 45,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _titles[index],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              _subtitles[index],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                _distances[index].toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  // color: Color(0xff)
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                'Km',
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              width: 1,
                              height: 30,
                              decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              height: 30,
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                'x',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              height: 30,
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                _quantities[index].toString(),
                                style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffD0292E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class LeftSideClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     final path = Path();
//     path.lineTo(0, 0);
//     path.lineTo(0, size.height);
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(size.width / 2, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
