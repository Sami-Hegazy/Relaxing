import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:relaxing_app/screens/details.dart';
import 'package:relaxing_app/widgets/category_card.dart';
import 'package:relaxing_app/widgets/search_bar.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.50,
          decoration: const BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 4,
                    ),
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                Text(
                  'Good Morning \n Sami',
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(fontWeight: FontWeight.w900),
                ),
                const SearchBar(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          title: 'Diet Recommendtion',
                          svgSrc: 'assets/icons/Hamburger.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Kegal Excrcises',
                          svgSrc: 'assets/icons/Excrecises.svg',
                          press: () {},
                        ),
                        CategoryCard(
                          title: 'Meditation',
                          svgSrc: 'assets/icons/Meditation.svg',
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const DetailsScreen();
                            }));
                          },
                        ),
                        CategoryCard(
                          title: 'Yoga',
                          svgSrc: 'assets/icons/yoga.svg',
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
