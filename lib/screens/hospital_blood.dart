import 'package:flutter/material.dart';
import 'package:redship_project/screens/blood_option.dart';

import '../components/image_text.dart';

class HospitalBlood extends StatelessWidget {
  const HospitalBlood({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageAndText(
              height: height,
              image: 'assets/images/hos.png',
              color: const Color.fromRGBO(183, 209, 249, 0.5),
              text: 'Hospital',
              textColor: const Color(0xff37459D),
            ),
            Container(
              height: height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BloodOption(),
                  ),
                );
              },
              child: ImageAndText(
                height: height,
                image: 'assets/images/blood.png',
                text: "Blood",
                textColor: const Color.fromARGB(195, 247, 151, 154),
                color: const Color.fromRGBO(248, 162, 165, 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
