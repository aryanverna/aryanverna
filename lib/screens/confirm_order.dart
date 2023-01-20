import 'package:flutter/material.dart';
import 'package:redship_project/screens/summary.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.08),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffDBE9FC),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xff37459D),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Column(
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
            SizedBox(width: height * 0.015),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/images/blood_tick.png',
              height: height * 0.2,
            ),
            const Text(
              'To Confirm your Order',
              style: TextStyle(
                color: Color(0xff37459D),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'enter your details',
              style: TextStyle(
                color: Color(0xff37459D),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: height * 0.04),
            Container(
              height: height * 0.24,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xffDBE9FC),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Phone. No',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: height * 0.008),
                    Container(
                      height: height * 0.06,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    Row(
                      children: [
                        const Text(
                          'OTP',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: height * 0.024),
                        MyWhiteContainer(height: height),
                        SizedBox(width: height * 0.018),
                        MyWhiteContainer(height: height),
                        SizedBox(width: height * 0.018),
                        MyWhiteContainer(height: height),
                        SizedBox(width: height * 0.018),
                        Expanded(
                          child: MyWhiteContainer(height: height),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.04),
            SizedBox(
              width: height * 0.35,
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
                    // fontFamily: "Lexend-Thin",
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SummaryPage(),
                    ),
                  );
                },
                child: const Text(
                  "CONTINUE PAYMENT",
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

class MyWhiteContainer extends StatelessWidget {
  const MyWhiteContainer({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.06,
      width: height * 0.05,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
