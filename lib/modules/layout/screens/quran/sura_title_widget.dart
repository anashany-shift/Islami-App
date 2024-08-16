import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class suratitlewidget extends StatelessWidget {
  final Suradata data;

  final String suraname;
  final String suranumber;

  suratitlewidget(
      {super.key,
      required this.data,
      required this.suraname,
      required this.suranumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            data.suranumber,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(
          height: 40,
          child: VerticalDivider(
            color: AppTheme.lightPrimaryColor,
            thickness: 3,
          ),
        ),
        Expanded(
          child: Text(
            data.suraname,
            textAlign: TextAlign.center,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}

class Suradata {
  final String suraname;
  final String suranumber;

  Suradata({required this.suraname, required this.suranumber});
}
