import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relaxing_app/widgets/search_bar.dart';
import 'package:relaxing_app/widgets/seassion_card.dart';
import '../constants.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.5,
          decoration: const BoxDecoration(
            color: kBlueLightColor,
            image: DecorationImage(
              image: AssetImage('assets/images/meditation_bg.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.height * 0.09),
                Text(
                  'Meditation',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 10),
                Text(
                  '3-10 MIN Course',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: size.width * 0.7,
                  child: Text(
                    'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                    style: Theme.of(context).textTheme.overline,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.5,
                  child: const SearchBar(),
                ),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SeassionCard(
                      seassionNum: 1,
                      isDone: true,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 2,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 3,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 4,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 5,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 6,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 7,
                      press: () {},
                    ),
                    SeassionCard(
                      seassionNum: 8,
                      press: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  'Meditation',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  padding: const EdgeInsets.all(10),
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 20,
                        spreadRadius: -13,
                        color: kBlueLightColor,
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Meditation_women_small.svg',
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Basic 2',
                                style: Theme.of(context).textTheme.subtitle1),
                            const Text('Start your deep your practice')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset('assets/icons/Lock.svg'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }
}
