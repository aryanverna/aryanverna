import 'package:flutter/material.dart';
import 'package:redship_project/screens/payment_2.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112.3),
        child: Container(
          height: height * 0.14,
          decoration: const BoxDecoration(
            color: Color(0xFFDBE9FC),
          ),
          child: SafeArea(
            child: Center(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF37459D),
                    size: 45,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                title: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 70,
                    fit: BoxFit.contain,
                    alignment: Alignment.topLeft,
                  ),
                ),
                trailing: Column(
                  children: const [
                    CircleAvatar(
                      backgroundColor: Color(0xFF37459D),
                      radius: 22,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/person.png'),
                        radius: 20,
                      ),
                    ),
                    Text(
                      'Sushmita',
                      style: TextStyle(
                        color: Color(0xFF37459D),
                        fontSize: 8,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'FreeSans',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Your Delivery is',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.12,
              width: width,
              decoration: BoxDecoration(
                color: const Color(0xffDBE9FC),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/blood_loc.png', height: 30),
                  const Text(
                    'Packed Cells',
                    style: TextStyle(
                      color: Color(0xff797575),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.034,
                    width: width * 0.18,
                    child: const MyCounter(),
                  ),
                  const Text(
                    '₹4,800',
                    style: TextStyle(
                      color: Color(0xff797575),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),
            const Text(
              'Order Details',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: height * 0.04),
            // Container(
            //   height: height * 0.3,
            //   width: width,
            //   decoration: BoxDecoration(
            //     color: Color(0xffDBE9FC),
            //     borderRadius: BorderRadius.circular(12),
            //   ),
            //   child: Column(
            //     children: [
            //       MyTextRow(text: 'Items', text1: 'x3  ₹4,800'),
            //     ],
            //   ),
            // ),
            const MyTable(),
            SizedBox(height: height * 0.04),
            SizedBox(
              width: width,
              child: ElevatedButton(
                style: TextButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.white, width: 0.0),
                  ),
                  backgroundColor: const Color(0xff37459D),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lexend-Thin"),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Payment2(),
                    ),
                  );
                },
                child: const Text(
                  "PROCEED TO PAY",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextRow extends StatelessWidget {
  const MyTextRow({super.key, required this.text, required this.text1});
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
        Text(text1),
      ],
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 28,
            child: IconButton(
              icon: const Icon(
                Icons.remove,
                color: Color(0xFF37459D),
                size: 10,
              ),
              onPressed: () {
                setState(() {
                  _counter--;
                });
              },
            ),
          ),
          Text(
            "$_counter",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 28,
            child: IconButton(
              icon: const Icon(
                Icons.add,
                color: Color(0xFF37459D),
                size: 10,
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

class MyTable extends StatelessWidget {
  const MyTable({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(9),
      child: Container(
        color: const Color(0xffDBE9FC),
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          border: const TableBorder(
            // top: BorderSide(color: Colors.white),
            // bottom: BorderSide(color: Colors.white),
            // left: BorderSide(color: Colors.white),
            // right: BorderSide(color: Colors.white),
            horizontalInside: BorderSide(color: Colors.white),
          ),
          children: [
            _buildTableRow(['Items', 'x3    ₹4,800']),
            _buildTableRow(['Delivery', '₹250']),
            _buildTableRow(['Commodity Tax', ' ₹50']),
            _buildTableRow(['Total', '₹5,100'], isBold: true),
          ],
        ),
      ),
    );
  }

  TableRow _buildTableRow(List<String> children, {bool isBold = false}) {
    return TableRow(
      children: children.map((child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            child,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isBold ? const Color(0xff37459D) : Colors.black,
              fontSize: isBold ? 20 : 16,
            ),
          ),
        );
      }).toList(),
    );
  }
}
