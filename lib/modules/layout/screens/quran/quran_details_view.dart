import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/widgets/bg_widget.dart';
import 'package:islami/modules/layout/screens/quran/sura_title_widget.dart';

class Quranview extends StatelessWidget {
  static const String routeName = 'quranview';

  const Quranview({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = (ModalRoute.of(context)?.settings.arguments as Suradata);

    // loadQuranData(data.suraname);

    return BgWidget(
        child: Scaffold(
      appBar: AppBar(
        title: Text('اسلامي'),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 60),
        padding: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 60),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.suraname,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.play_circle_fill_rounded),
              ],
            ),
            Divider(
              thickness: 2,
            ),
          ],
        ),
      ),
    ));
  }

  Future<void> loadQuranData(int fileIndex) async {
    String content =
        await rootBundle.loadString('assets/files/${fileIndex + 1}.txt');

    print('${content}');
  }
}
