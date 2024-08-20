import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class radioScreen extends StatelessWidget {
  const radioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Bounceable(
              duration: Duration(seconds: 1),
              onTap: () {},
              child: Image.asset('assets/images/Radio.png')),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Text(
          'إذاعة القرآن الكريم ',
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Bounceable(
                duration: Duration(seconds: 2),
                // scaleFactor: 0.6,
                // curve: Curves.elasticIn,
                onTap: () {},
                child: Image.asset('assets/icons/Icon metro-next-1.png')),
            Bounceable(
                duration: Duration(milliseconds: 300),
                scaleFactor: 0.2,
                curve: Curves.elasticIn,
                onTap: () {},
                child: Image.asset('assets/icons/Icon awesome-play.png')),
            Bounceable(
                duration: Duration(seconds: 2),
                // scaleFactor: 0.6,
                // curve: Curves.elasticIn,
                onTap: () {},
                child: Image.asset('assets/icons/Icon metro-next.png')),
          ],
        )
      ],
    );
  }
}
