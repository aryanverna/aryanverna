import 'package:flutter/material.dart';
import 'package:redship_project/screens/donate_now.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget myStack = Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 15),
      child: Container(
        color: Colors.transparent,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/stack_1.png',
              height: 178,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DonateNow(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/images/stack_2.png',
                  height: 178,
                ),
              ),
            ),
          ],
        ),
      ),
    );

    Widget circleDots = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        dots(const Color(0xFFB7D1F9)),
        dots(const Color(0xFFB7D1F9)),
        dots(const Color(0xFFB7D1F9)),
        dots(const Color(0xFF37459D)),
        dots(const Color(0xFFB7D1F9)),
      ],
    );
    Widget iconAndTextSection = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 13, right: 8, top: 18, bottom: 10),
          child: Icon(
            Icons.location_on,
            color: Color(0xFF37459D),
            size: 30,
          ),
        ),
        Text(
          'Near You',
          style: TextStyle(
              fontFamily: 'FreeSans',
              color: Color(0xFF37459D),
              fontWeight: FontWeight.w700,
              fontSize: 16),
        ),
      ],
    );

    Widget textSection = Column(
      children: [
        textSection1(
          'Blood Tests @999/-',
          'Get blood tests from renowned labs at PSI phase 2 hospital '
              'Vinayak nagar, Rasta peth opposite to omkar tours and travels.',
        ),
        textSection1(
          'Health Check-up',
          'Health is Wealth, keep your self updated and fit. Get yourselves '
              'checked at the lowest ever rates at RK Hospital - Vinayak nagar, '
              ' Rasta peth opposite to omkar tours and travels',
        ),
        textSection1(
          'Cancer Awarness Programme',
          'Organized by St. Mary’s School and Ram Ratan Hospital at New '
              'Treea ground.',
        ),
      ],
    );

    // var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(112.3),
        child: Container(
          height: 112.3,
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
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DonateNow(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(
                  top: 35, bottom: 12, left: 19, right: 20),
              decoration: const BoxDecoration(),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/banner.png',
                  height: 170,
                  width: double.infinity,
                ),
              ),
            ),
          ),
          circleDots,
          myStack,
          iconAndTextSection,
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textSection,
          ),
        ],
      ),
    );
  }

  Container dots(Color color) {
    return Container(
      padding: const EdgeInsets.all(3),
      child: CircleAvatar(
        backgroundColor: color,
        radius: 4,
      ),
    );
  }

  ListTile textSection1(String title, String subTitle) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Color(0xFFD9D9D9),
        radius: 6,
      ),
      title: Text(
        title,
        softWrap: true,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subTitle,
        softWrap: true,
        style: const TextStyle(
          color: Color(0xFF797575),
        ),
      ),
    );
  }
}
