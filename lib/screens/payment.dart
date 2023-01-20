import 'package:flutter/material.dart';
import 'package:redship_project/screens/track.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  List<String> imageList = [
    "assets/images/paypal.png",
    "assets/images/master.png",
    "assets/images/paytm.png",
    "assets/images/visa.png",
    "assets/images/phonepe.png",
    "assets/images/gpay.png",
    "assets/images/bharat.png",
    "assets/images/hand.png",
  ];

  void showDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, _, __) {
        var width = MediaQuery.of(context).size.width;
        var height = MediaQuery.of(context).size.height;
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/images/tick.png',
                                  height: 40,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Your Payment has been Recieved,\nOrder Confirmed. ',
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: height * 0.008),
                                    SizedBox(
                                      width: width * 0.78,
                                      child: const Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          'We are on our way...',
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: height * 0.008),
                                    SizedBox(
                                      // alignment: Alignment.bottomRight,
                                      width: width * 0.5,
                                      child: ElevatedButton(
                                        style: TextButton.styleFrom(
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            side: const BorderSide(
                                                color: Colors.white,
                                                width: 3.0),
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
                                                  const TrackScreen(),
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          "TRACK NOW",
                                          style: TextStyle(
                                              color: Color(0xff37459D)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Text(
                'Payment Options',
                style: TextStyle(
                  color: Color(0xff37459D),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '3 items | 5,100',
                style: TextStyle(
                  color: Color(0xff37459D),
                  fontWeight: FontWeight.w100,
                ),
              )
            ],
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
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF37459D),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 2,
                      height: height * 0.07,
                      child: Container(
                        color: const Color(0xFF37459D),
                      ),
                    ),
                    const CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0xFF37459D),
                      child: CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: const [
                    MyColumnWithText(
                      title: 'PSI Hospital Phase 3',
                      subTitle:
                          'Vinayak nagar, Rasta peth opposite to \nomkar tours and travels',
                    ),
                    MyColumnWithText(
                      title: 'Koregaon Park,Pune',
                      subTitle: 'Lane No. 6, Inlack and Budrani Hospital',
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            SizedBox(height: height * 0.008),
            const Text(
              'Preferred Payment',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: height * 0.016),
            Container(
              height: height * 0.14,
              decoration: BoxDecoration(
                color: const Color(0xffDBE9FC),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Image.asset(
                        'assets/images/gpay.png',
                        height: 40,
                      ),
                    ),
                    SizedBox(width: height * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Google Pay',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: height * 0.005),
                        ElevatedButton(
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
                              // fontFamily: "Lexend-Thin",
                            ),
                          ),
                          onPressed: () {
                            showDialog();
                          },
                          child: const Text(
                            "PAY VIA GOOGLEPAY",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.016),
            const Text(
              'Credit & Debit cards',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: height * 0.016),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: const Color(0xffDBE9FC),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xff37459D),
                      ),
                    ),
                    SizedBox(width: height * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Add New Card',
                          style: TextStyle(
                            color: Color(0xff37459D),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        // SizedBox(height: height * 0.00),
                        Text(
                          'Save and Pay via Cards.',
                          style: TextStyle(
                            color: Color(0xff797575),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.016),
            const Text(
              'UPI',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: height * 0.016),
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: const Color(0xffDBE9FC),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: height * 0.05,
                      width: height * 0.06,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Color(0xff37459D),
                      ),
                    ),
                    SizedBox(width: height * 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Add New UPI ID',
                          style: TextStyle(
                            color: Color(0xff37459D),
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                        ),
                        // SizedBox(height: height * 0.00),
                        Text(
                          'You need to have registered UPI ID.',
                          style: TextStyle(
                            color: Color(0xff797575),
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: height * 0.016),
            const Text(
              'Wallet Payment',
              style: TextStyle(
                  color: Color(0xff797575),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SizedBox(height: height * 0.016),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 30,
                  ),
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: height * 0.05,
                      width: height * 0.06,
                      decoration: BoxDecoration(
                        color: const Color(0xffDBE9FC),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Center(
                        child: Image.asset(
                          imageList[index],
                          // fit: BoxFit.scaleDown,
                          height: 35,
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class MyColumnWithText extends StatelessWidget {
  const MyColumnWithText({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            color: Color(0xff37459D),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            color: Color(0xff37459D),
            fontWeight: FontWeight.w100,
          ),
        )
      ],
    );
  }
}
