
import 'package:flutter/material.dart';

class DonateNow extends StatelessWidget {
  const DonateNow({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    Widget myIconAndText = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          buildRow(
            Icons.event_available,
            '14th June 2022',
          ),
          const SizedBox(width: 20),
          buildRow(Icons.schedule, ' 10:00 Am to 4:00 Pm '),
        ],
      ),
    );
    Widget myTextSpan = Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text.rich(
        TextSpan(
          text: 'On behalf of ',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
          children: [
            TextSpan(
              text: 'World blood Donor day,',
              style: textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextSpan(
              text: '\nRed Cross Society ',
              style: textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold,
                color: const Color(0xffD0292E),
              ),
            ),
            const TextSpan(
              text: 'is arranging for a donation camp '
                  '\nfor age group 18-60 '
                  '\n\nBe a part of this incredible initiative and contribute '
                  '\ntowards health.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );

    Widget myListTile = Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: ListTile(
        leading: const Icon(
          Icons.location_on,
          color: Color(0xFF37459D),
          size: 50,
        ),
        title: Text(
          'PSI Hospital Phase 3',
          style: textTheme.headline6!.copyWith(
            color: const Color(0xFF37459D),
            fontFamily: 'FreeSans',
            fontSize: 16,
            letterSpacing: 1.5,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          'Vinayak nagar, Rasta peth opposite to '
          'omkar tours and travels',
          style: textTheme.subtitle2!.copyWith(
            color: const Color(0xFF37459D),
            fontFamily: 'FreeSans',
            fontSize: 12,
            letterSpacing: 0.5,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
    var preferredSize2 = PreferredSize(
      preferredSize: const Size.fromHeight(112.3),
      child: Container(
        height: 112.3,
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
              title: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Donate Now',
                  style: TextStyle(
                    fontFamily: 'FreeSans',
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              trailing: Column(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.png'),
                    radius: 22,
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
    );
    Widget myImage = Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Image.asset(
        'assets/images/banner_2.png',
      ),
    );
    Widget myBellAndText = Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Align(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF37459D),
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                transform: Matrix4.rotationZ(-0.3),
                child: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                  size: 60,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              const Text(
                'NOTIFY ME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'FreeSans',
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    Widget myLastText = Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: const [
          Align(
            alignment: Alignment.center,
            child: Text(
              'Happy Donating ! ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'FreeSans',
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Spread the word - to live is to share.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                fontFamily: 'FreeSans',
              ),
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: preferredSize2,
      body: ListView(
        children: [
          myListTile,
          const Divider(
            color: Color(0xFF1E1E1E),
          ),
          myTextSpan,
          myIconAndText,
          myImage,
          myBellAndText,
          myLastText,
        ],
      ),
    );
  }

  Row buildRow(IconData icon, String label) {
    return Row(
      children: [
        Icon(
          icon,
          size: 25,
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFF37459D),
            fontSize: 15,
            fontWeight: FontWeight.w700,
            fontFamily: 'FreeSans',
          ),
        ),
      ],
    );
  }
}
