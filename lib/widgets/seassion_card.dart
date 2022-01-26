import 'package:flutter/material.dart';
import '../constants.dart';

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final bool isDone;
  final VoidCallback press;

  const SeassionCard({
    Key? key,
    required this.seassionNum,
    this.isDone = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 - 10,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -5,
                color: kBlueLightColor,
              )
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? kBlueColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kBlueColor,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Session $seassionNum',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
